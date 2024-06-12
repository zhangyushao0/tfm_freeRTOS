#include "loader.h"

#include "rand.h"

static uint32_t version_number;
static uint32_t vector_address;//NS -> S
static uint32_t vector_size;//NS -> S
static uint32_t vector_load_address;//S
static uint32_t image_address;// NS -> S
static uint32_t image_size;// the unit is byte
static uint32_t image_load_address;// S
static uint32_t rel_address;// NS -> S
static uint32_t rel_size;//remember to /4, the unit is word
static uint32_t data_phys_address;

static uint32_t* rel_array;// S

static uint32_t map_nonsecure_address(uint32_t address);
static uint32_t map_secure_address(uint32_t address);
static uint32_t generating_random_address();


uint32_t getVersion()
{
	uint32_t version =  *(uint32_t*)(NEW_IMAGE_INFO);
	return version;
}


void load_init(uint32_t newVersion, uint32_t vectorAddress, uint32_t vectorSize, uint32_t imageSize, uint32_t relAddress, uint32_t relSize, uint32_t dataPhysAddress)
{
	version_number = newVersion;
	vector_address = map_secure_address(vectorAddress);
	vector_size = vectorSize;
	image_address = vector_address + vector_size;
	image_size = imageSize - vectorSize;

	/* two random address, one is for vector table, the other is for image */
	image_load_address = generating_random_address();//0xc0777c0;
	uint32_t vectorSpace = (vector_size/0x200) * 0x200;
	if ((vector_size % 0x200) != 0)
		vectorSpace += 0x200;

	/* 0x08040000 - 0x0805ffff */
	if (image_load_address < NON_SECURE_AREA1 + NON_SECURE_AREA_SIZE)
	{
		if ((image_load_address + image_size) > NON_SECURE_AREA1 + NON_SECURE_AREA_SIZE)
		{
			image_load_address -= image_size - (NON_SECURE_AREA1 + NON_SECURE_AREA_SIZE - image_load_address);
			image_load_address /= 4;
			image_load_address *= 4;
		}

		/* vector table is put in front of image */
		if (((image_load_address&0xffffff00) - NON_SECURE_AREA1) >= vectorSpace)
		{
			uint32_t base = ((image_load_address&0xffffff00) - NON_SECURE_AREA1) / 0x200;
			if (base == 0)
				vector_load_address = NON_SECURE_AREA1;
			else
				vector_load_address = (rand_generate() % base) * 0x200 + NON_SECURE_AREA1;
		}
		/* vector table is put after the image */
		else
		{
			uint32_t area = image_load_address + image_size;
			if ((area%0x200) != 0)
			{
				area = (area / 0x200) * 0x200 + 0x200;
			}

			if ((NON_SECURE_AREA1 + NON_SECURE_AREA_SIZE - area) >= vectorSpace)
			{
				uint32_t base  = (NON_SECURE_AREA1 + NON_SECURE_AREA_SIZE - area) / 0x200;
				if (base == 0)
					vector_load_address = area;
				else
					vector_load_address = (rand_generate() % base) * 0x200 + area;
			}
			/* image cannot be randomized */
			else
			{
				vector_load_address = NON_SECURE_AREA1;
				image_load_address = NON_SECURE_AREA1 + vector_size;
			}

		}
	}
	/* 0x08060000 - 0x0807ffff */
	else
	{
		if ((image_load_address + image_size) > NON_SECURE_AREA2 + NON_SECURE_AREA_SIZE)
		{
			image_load_address -= image_size - (NON_SECURE_AREA2 + NON_SECURE_AREA_SIZE - image_load_address);
			image_load_address /= 4;
			image_load_address *= 4;
		}

		/* vector table is put in front of image */
		if (((image_load_address&0xffffff00) - NON_SECURE_AREA2) >= vectorSpace)
		{
			uint32_t base = ((image_load_address&0xffffff00) - NON_SECURE_AREA2) / 0x200;
			if (base == 0)
				vector_load_address = NON_SECURE_AREA2;
			else
				vector_load_address = (rand_generate() % base) * 0x200 + NON_SECURE_AREA2;
		}
		/* vector table is put after the image */
		else
		{
			uint32_t area = image_load_address + image_size;
			if ((area%0x200) != 0)
			{
				area = (area / 0x200) * 0x200 + 0x200;
			}

			if ((NON_SECURE_AREA2 + NON_SECURE_AREA_SIZE - area) >= vectorSpace)
			{
				uint32_t base  = (NON_SECURE_AREA2 + NON_SECURE_AREA_SIZE - area) / 0x200;
				if (base == 0)
					vector_load_address = area;
				else
					vector_load_address = (rand_generate() % base) * 0x200 + area;
			}
			/* image cannot be randomized */
			else
			{
				vector_load_address = NON_SECURE_AREA2;
				image_load_address = NON_SECURE_AREA2 + vector_size;
			}

		}
	}


	rel_address = map_secure_address(relAddress);
	rel_size = relSize/4;
	data_phys_address = map_secure_address(dataPhysAddress);
	rel_array = (uint32_t *)malloc(sizeof(uint32_t)*(rel_size/2+1));
	generating_rel_array();
}



void generating_rel_array()
{
	uint32_t *address = (uint32_t*)(SECURE_ADDRESS + rel_address - vector_address);
	uint32_t* rel_index=rel_array;
	uint32_t size = rel_size;
	while (size)
	{
		if (*(address+1) == 0x00000017)
		{
			/* (in flash) */
			if (((*address)&0xff000000) == NON_SECURE_CODE_ADDRESS_MARK)
			{
				*rel_index = map_secure_address(*address);
			}
			/* .data section (in ram)*/
			else
			{
				*rel_index = *address - NON_SECURE_DATA_ADDRESS + data_phys_address;
			}

			rel_index += 1;
		}
		address += 2;
		size -= 2;
	}
	*rel_index = REL_END;
}


int loading_image(){
    int ret=0;
    //load_address = generate_random_address() - image_size;
    uint32_t vector_image_base = vector_load_address - vector_address;
    uint32_t image_relocate_base = image_load_address - image_address;
    ret += flash_writing(SECURE_ADDRESS, vector_size, vector_load_address);
    ret += flash_writing(SECURE_ADDRESS+vector_size, image_size, image_load_address);
    ret += image_relocating(vector_image_base, image_relocate_base);
    if (!ret)
    {
    	uint64_t data = map_nonsecure_address(vector_load_address);
    	data = (data<<32) | version_number;
    	Flash_Write_Double_Word(NEW_IMAGE_INFO, data);
    	//Flash_Write_Word((NEW_IMAGE_INFO+4U), map_nonsecure_address(vector_load_address));
    }
    return ret==0?SUCCESS:FAIL;
}


int image_relocating(uint32_t vector_relocate_base, uint32_t image_relocate_base){
    int ret=0;
    uint32_t* rel_index=rel_array;
    uint32_t start = 0;
    uint32_t end = 0;
    uint32_t relocate_base = vector_relocate_base;
    uint32_t page = GetPage(*rel_index+relocate_base);

    while(*rel_index!=REL_END){
    	if (*rel_index < (vector_address + vector_size))
    	{
    		if (page == GetPage(*rel_index + relocate_base))
    		{
    			end += 1;
    		    rel_index += 1;
    		}
    		else
    		{
    		    ret += relocating_words(start, end, page, relocate_base, image_relocate_base);
    		    start = end;
    		    page = GetPage(*rel_index + relocate_base);
    		}
    	}
    	else
    	{
    		if (relocate_base == vector_relocate_base)
    		{
    			ret += relocating_words(start, end, page, relocate_base, image_relocate_base);
    			start = end;
    			relocate_base = image_relocate_base;
    			page = GetPage(*rel_index + relocate_base);
    		}

    		if (page == GetPage(*rel_index + relocate_base))
    		{
    		    end += 1;
    		    rel_index += 1;
    		}
    		else
    		{
    		    ret += relocating_words(start, end, page, relocate_base, image_relocate_base);
    		    start = end;
    		    page = GetPage(*rel_index + relocate_base);
    		}
    	}
    }
    ret += relocating_words(start, end, page, relocate_base, image_relocate_base);

    return ret;
}

int relocating_words(uint32_t start, uint32_t end, uint32_t page, uint32_t page_relocate_base, uint32_t relocate_base)
{
	int ret = 0;
	uint8_t buffer[FLASH_PAGE_SIZE];

	uint32_t page_base = GetAddress(page);
    ret += flash_erase_page(page, buffer);

    uint32_t pre_val;
    uint32_t new_val;
    uint32_t offset;
    uint32_t index;
    uint32_t* rel_index = rel_array + start;
    while (rel_index<rel_array+end)
    {
    	//offset = *rel_index + relocate_base - load_address;
    	offset = *rel_index - vector_address;
    	pre_val = *(uint32_t*)(SECURE_ADDRESS+offset);//read from secure flash without permission restriction
    	if ((pre_val&0xff000000) == NON_SECURE_CODE_ADDRESS_MARK)
    	{
    		if (pre_val != map_nonsecure_address(vector_address))
    		{
    			new_val = pre_val + relocate_base;
    		}
    		else
    		{
    			new_val = map_nonsecure_address(vector_load_address);
    		}

    		index = *rel_index + page_relocate_base - page_base;
    		buffer[index] = new_val&0xff;
    		buffer[index+1] = (new_val&0xff00)>>8;
    		buffer[index+2] = (new_val&0xff0000)>>16;
    		buffer[index+3] = new_val>>24;
    	}
    	rel_index++;

    }

    ret += flash_write_words(page, buffer);

    return ret;
}

void NonSecure_Init(void)
{
	funcptr_NS NonSecure_ResetHandler;

	vector_load_address = *(uint32_t*)(NEW_IMAGE_INFO + 4U);

	SCB_NS->VTOR = vector_load_address;

	__TZ_set_MSP_NS((*(uint32_t *)vector_load_address));

	NonSecure_ResetHandler = (funcptr_NS)(*((uint32_t *)((vector_load_address) + 4U)));

	NonSecure_ResetHandler();
}


static uint32_t map_nonsecure_address(uint32_t address)
{
	return address - 0x04000000;
}

static uint32_t map_secure_address(uint32_t address)
{
	return address + 0x04000000;
}


static uint32_t generating_random_address()
{
	uint32_t old_image_address = *(uint32_t*)(NEW_IMAGE_INFO+4U);
	uint32_t new_image_address = rand_generate() % NON_SECURE_AREA_SIZE;
	new_image_address = new_image_address / 4;
	new_image_address = new_image_address * 4;
	if (old_image_address < map_nonsecure_address(NON_SECURE_AREA1 + NON_SECURE_AREA_SIZE))
	{
		new_image_address = new_image_address + ADDR_FLASH_PAGE_192;
	}
	else
	{
		new_image_address = new_image_address + ADDR_FLASH_PAGE_128;
	}
	return new_image_address;
}

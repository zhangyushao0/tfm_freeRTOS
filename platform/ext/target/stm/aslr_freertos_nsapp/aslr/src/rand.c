#include "rand.h"
#include "stm32l5xx/hal/Inc/stm32l5xx_hal_rng.h"
RNG_HandleTypeDef hrng;
uint32_t rand_generate()
{
	uint32_t res;
	uint32_t ret;
	ret = HAL_RNG_GenerateRandomNumber(&hrng, &res);
	while (ret == HAL_ERROR)
	{
		ret = HAL_RNG_GenerateRandomNumber(&hrng, &res);
	}

	return res;
}

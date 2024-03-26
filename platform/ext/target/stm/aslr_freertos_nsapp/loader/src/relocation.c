#include "relocation.h"
uint32_t table_size = 169;
relocation_info_t relocation_info[169] = {
    {0x8055000, 0x8056000, 0},
    {0x8055004, 0x805578d, 0},
    {0x8055008, 0x80555c5, 0},
    {0x805500c, 0x80555c9, 0},
    {0x8055010, 0x80555cd, 0},
    {0x8055014, 0x80555d1, 0},
    {0x8055018, 0x80555d5, 0},
    {0x805501c, 0x80555d9, 0},
    {0x805502c, 0x805c8a5, 0},
    {0x8055030, 0x80555dd, 0},
    {0x8055038, 0x805c7e9, 0},
    {0x805503c, 0x805bee5, 0},
    {0x8055040, 0x80555e1, 0},
    {0x8055044, 0x80555e5, 0},
    {0x8055048, 0x80555e9, 0},
    {0x805504c, 0x80555ed, 0},
    {0x8055050, 0x80555f1, 0},
    {0x8055054, 0x80555f5, 0},
    {0x8055058, 0x80555f9, 0},
    {0x805505c, 0x80555fd, 0},
    {0x8055060, 0x8055601, 0},
    {0x8055064, 0x8055605, 0},
    {0x8055068, 0x8055609, 0},
    {0x805506c, 0x805560d, 0},
    {0x8055070, 0x8055611, 0},
    {0x8055074, 0x8055615, 0},
    {0x8055078, 0x8055619, 0},
    {0x805507c, 0x805561d, 0},
    {0x8055080, 0x8055621, 0},
    {0x8055084, 0x8055625, 0},
    {0x8055088, 0x8055629, 0},
    {0x805508c, 0x805562d, 0},
    {0x8055090, 0x8055631, 0},
    {0x8055094, 0x8055635, 0},
    {0x8055098, 0x8055639, 0},
    {0x805509c, 0x805563d, 0},
    {0x80550a0, 0x8055641, 0},
    {0x80550a4, 0x8055645, 0},
    {0x80550a8, 0x8055649, 0},
    {0x80550ac, 0x805564d, 0},
    {0x80550b0, 0x8055651, 0},
    {0x80550b4, 0x8055655, 0},
    {0x80550b8, 0x8055659, 0},
    {0x80550bc, 0x805565d, 0},
    {0x80550c0, 0x8055661, 0},
    {0x80550c4, 0x8055665, 0},
    {0x80550c8, 0x8055669, 0},
    {0x80550cc, 0x805566d, 0},
    {0x80550d0, 0x8055671, 0},
    {0x80550d4, 0x8055675, 0},
    {0x80550d8, 0x8055679, 0},
    {0x80550dc, 0x805567d, 0},
    {0x80550e0, 0x8055681, 0},
    {0x80550e4, 0x8055685, 0},
    {0x80550e8, 0x8055689, 0},
    {0x80550ec, 0x805568d, 0},
    {0x80550f0, 0x8055691, 0},
    {0x80550f4, 0x8055695, 0},
    {0x80550f8, 0x8055699, 0},
    {0x80550fc, 0x805569d, 0},
    {0x8055100, 0x80556a1, 0},
    {0x8055104, 0x80556a5, 0},
    {0x8055108, 0x80556a9, 0},
    {0x805510c, 0x80556ad, 0},
    {0x8055110, 0x80556b1, 0},
    {0x8055114, 0x80556b5, 0},
    {0x8055118, 0x80556b9, 0},
    {0x805511c, 0x80556bd, 0},
    {0x8055120, 0x80556c1, 0},
    {0x8055124, 0x80556c5, 0},
    {0x8055128, 0x80556c9, 0},
    {0x805512c, 0x80556cd, 0},
    {0x8055130, 0x80556d1, 0},
    {0x8055134, 0x80556d5, 0},
    {0x8055138, 0x80556d9, 0},
    {0x805513c, 0x80556dd, 0},
    {0x8055140, 0x80556e1, 0},
    {0x8055144, 0x80556e5, 0},
    {0x8055148, 0x80556e9, 0},
    {0x805514c, 0x80556ed, 0},
    {0x8055150, 0x80556f1, 0},
    {0x8055154, 0x80556f5, 0},
    {0x8055158, 0x80556f9, 0},
    {0x805515c, 0x80556fd, 0},
    {0x8055160, 0x8055701, 0},
    {0x8055164, 0x8055705, 0},
    {0x8055168, 0x8055709, 0},
    {0x805516c, 0x805570d, 0},
    {0x8055170, 0x8055711, 0},
    {0x8055178, 0x8055715, 0},
    {0x8055180, 0x8055719, 0},
    {0x8055184, 0x805571d, 0},
    {0x8055188, 0x8055721, 0},
    {0x805518c, 0x8055725, 0},
    {0x8055190, 0x8055729, 0},
    {0x8055194, 0x805572d, 0},
    {0x8055198, 0x8055731, 0},
    {0x805519c, 0x8055735, 0},
    {0x80551a0, 0x8055739, 0},
    {0x80551a4, 0x805573d, 0},
    {0x80551a8, 0x8055741, 0},
    {0x80551ac, 0x8055745, 0},
    {0x80551b0, 0x8055749, 0},
    {0x80551b4, 0x805574d, 0},
    {0x80551b8, 0x8055751, 0},
    {0x80551bc, 0x8055755, 0},
    {0x80551c0, 0x8055759, 0},
    {0x80551c4, 0x805575d, 0},
    {0x80551c8, 0x8055761, 0},
    {0x80551cc, 0x8055765, 0},
    {0x80551d0, 0x8055769, 0},
    {0x80551d4, 0x805576d, 0},
    {0x80551d8, 0x8055771, 0},
    {0x80551dc, 0x8055775, 0},
    {0x80551e0, 0x8055779, 0},
    {0x80551e4, 0x805577d, 0},
    {0x80551e8, 0x8055781, 0},
    {0x80551ec, 0x8055785, 0},
    {0x80551f0, 0x8055789, 0},
    {0x80557b6, 0x8055201, 2},
    {0x80557ba, 0x805586d, 2},
    {0x805584e, 0x80558cd, 2},
    {0x8055854, 0x20000100, 1},
    {0x8055858, 0x20001100, 1},
    {0x805585c, 0x20000100, 1},
    {0x8055860, 0x20000118, 1},
    {0x8055864, 0x20000100, 1},
    {0x8055868, 0x20000110, 1},
    {0x80558a8, 0x8055b49, 2},
    {0x80558ac, 0x8055995, 2},
    {0x80558be, 0x805559f, 2},
    {0x80558c6, 0x8055045, 2},
    {0x80558de, 0x8055925, 2},
    {0x8055904, 0x8055001, 2},
    {0x8055914, 0x805559f, 2},
    {0x8055918, 0x8055873, 2},
    {0x8055920, 0x20002384, 1},
    {0x805596c, 0x8055573, 2},
    {0x8055982, 0x8055203, 2},
    {0x80559a2, 0x80559b5, 2},
    {0x80559b0, 0x20001100, 1},
    {0x80559c4, 0x80559d5, 2},
    {0x8055a90, 0x20001294, 1},
    {0x8055a94, 0x20001298, 1},
    {0x8055a98, 0x2000129c, 1},
    {0x8055a9c, 0x200012a0, 1},
    {0x8055aca, 0x8055b05, 2},
    {0x8055b34, 0x20001290, 1},
    {0x8055b44, 0x20001290, 1},
    {0x8055b52, 0x8055b39, 2},
    {0x8055b5a, 0x8055aa1, 2},
    {0x8055b68, 0x20001100, 1},
    {0x8055b8e, 0x8055e90, 2},
    {0x8055b92, 0x8055e90, 2},
    {0x8055bc0, 0x80583ad, 2},
    {0x8055bc4, 0x80583ad, 2},
    {0x8055bce, 0x80551ac, 2},
    {0x8055bd2, 0x80551ac, 2},
    {0x8055bec, 0x8055273, 2},
    {0x8055c24, 0x8057278, 2},
    {0x8055c28, 0x8057278, 2},
    {0x8055c34, 0x805c7c5, 2},
    {0x8055c3c, 0x805c7c5, 2},
    {0x8055c84, 0x80561a4, 2},
    {0x8055c88, 0x80561a4, 2},
    {0x8055c94, 0x805c7c5, 2},
    {0x8055cac, 0x80561a8, 2},
    {0x8055cb0, 0x80561a8, 2},
    {0x8055cbc, 0x805c7c5, 2},
};

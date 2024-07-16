/* Objective function */
max: 1 x14;

/* Variable bounds */

VERTICE2: - 1 x82 - 1 x42 - 1 x12 + 1 x71 + 1 x73 + 1 x74 = 0;
VERTICE3: - 1 x13 - 1 x73 - 1 x93 + 1 x81 + 1 x82 + 1 x85 = 0;
VERTICE5: - 1 x85 - 1 x45 - 1 x105 + 1 x93 + 1 x94 + 1 x96 = 0;
VERTICE6: - 1 x46 - 1 x96 + 1 x104 + 1 x105 = 0;

VERTICE_2: 1 x82 + 1 x42 + 1 x12 = 1 x27;
VERTICE_3: 1 x13 + 1 x73 + 1 x93 = 1 x38;
VERTICE_5: 1 x85 + 1 x45 + 1 x105 = 1 x59;
VERTICE_6: 1 x46 + 1 x96 = 1 x610;

FLUXO.ORIGEM: - 1 x71 - 1 x81 + 1 x12 + 1 x13 = 1 x14;
FLUXO.DESTINO: - 1 x74 - 1 x94 - 1 x104 + 1 x42 + 1 x45 + 1 x46 = - 1 x14;

ARCO2: x27 <= 10;
ARCO3: x38 <= 70;
ARCO5: x59 <= 10;
ARCO6: x610 <= 10;

int x12, x13, x71, x81, x27, x73, x82, x38, x42, x74, x85, x93, x45, x59, x94, x105, x96, x46, x104, x610, x14;
GLOBAL_MAPPER_SCRIPT VERSION="1.00"

// 
/* Alterar a resolução da grid, resampling, de arcinfo grids (asc files) atrvés do método da média utilizando uma box de 3x3 como amostra
/* Nota: substituir os caracteres { } pelo endereço das diectorias correspondestes C:\Exemplo\
//
DIR_LOOP_START \ 
	DIRECTORY="{ }" \
	FILENAME_MASKS="*asc"
		
IMPORT \
	FILENAME="%FNAME_W_DIR%" \
	TYPE=ARCASCIIGRID \
	SAMPLING_METHOD=BOX_3X3 \
	PROJ="{ }\UTM_F36S.prj"
	
EXPORT_ELEVATION \
	FILENAME="{ }\%FNAME_WO_EXT%.asc" \
	TYPE=ARCASCIIGRID \
	SPATIAL_RES_METERS=30.0 \
	COORD_DELIM=SPACE \
	USE_CENTER_COORDS=YES

EXPORT_ELEVATION \
	FILENAME="{ }\%FNAME_WO_EXT%.asc" \
	TYPE=ARCASCIIGRID \
	SPATIAL_RES_METERS=90.0 \
	COORD_DELIM=SPACE \
	USE_CENTER_COORDS=YES

UNLOAD_ALL

DIR_LOOP_END

// 
/* Alterar a resolução da grid, resampling, de arcinfo grids (asc files) atrvés do valor máximo utilizando uma box de 3x3 como amostra
/* Nota: substituir os caracteres { } pelo endereço das diectorias correspondestes C:\Exemplo\
//
DIR_LOOP_START \
	DIRECTORY="{ }" \
	FILENAME_MASKS="*asc"

IMPORT \
	FILENAME="%FNAME_W_DIR%" \
	TYPE=ARCASCIIGRID \
	SAMPLING_METHOD=MAX_3X3 \
	PROJ="{ }\UTM_F36S.prj"


EXPORT_ELEVATION \
	FILENAME="{ }\%FNAME_WO_EXT%.asc" \
	TYPE=ARCASCIIGRID \
	SPATIAL_RES_METERS=30.0 \
	COORD_DELIM=SPACE \
	USE_CENTER_COORDS=YES

EXPORT_ELEVATION \
	FILENAME="{ }\%FNAME_WO_EXT%.asc" \
	TYPE=ARCASCIIGRID \
	SPATIAL_RES_METERS=90.0 \
	COORD_DELIM=SPACE \
	USE_CENTER_COORDS=YES

UNLOAD_ALL

DIR_LOOP_END

// 
/* Alterar a resolução da grid, resampling, de arcinfo grids (asc files) atrvés do valor mínimo utilizando uma box de 3x3 como amostra
/* Nota: substituir os caracteres { } pelo endereço das diectorias correspondestes C:\Exemplo\
//
DIR_LOOP_START \
	DIRECTORY="{ }" \
	FILENAME_MASKS="*asc"

IMPORT \
	FILENAME="%FNAME_W_DIR%" \
	TYPE=ARCASCIIGRID \
	SAMPLING_METHOD=MIN_3X3 \
	PROJ="{ }\UTM_F36S.prj"


EXPORT_ELEVATION \
	FILENAME="{ }\%FNAME_WO_EXT%.asc" \
	TYPE=ARCASCIIGRID \
	SPATIAL_RES_METERS=30.0 \
	COORD_DELIM=SPACE \
	USE_CENTER_COORDS=YES

EXPORT_ELEVATION \
	FILENAME="{ }\%FNAME_WO_EXT%.asc" \
	TYPE=ARCASCIIGRID \
	SPATIAL_RES_METERS=90.0 \
	COORD_DELIM=SPACE \
	USE_CENTER_COORDS=YES

UNLOAD_ALL

DIR_LOOP_END

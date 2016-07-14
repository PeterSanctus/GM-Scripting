GLOBAL_MAPPER_SCRIPT VERSION="1.00"

// 
/* Converter arcinfo grids (asc files) para Elevation GeoTiff
/* Nota: substituir os caracteres { } pelo endereço das diectorias correspondestes C:\Exemplo\
//
DIR_LOOP_START \
	DIRECTORY={ } \
	FILENAME_MASKS="*asc"

IMPORT \
	FILENAME="%FNAME_W_DIR%" \
	TYPE=ARCASCIIGRID \
	PROJ="{ }\UTM_F36S.prj"

EXPORT_ELEVATION \
	FILENAME="{ }\%FNAME_WO_EXT%.tif" \
	TYPE=GEOTIFF  \
	BYTES_PER_SAMPLE=4 \
	SPATIAL_RES_METERS=1.0\
	GEN_WORLD_FILE=YES\	
	
UNLOAD_ALL

DIR_LOOP_END

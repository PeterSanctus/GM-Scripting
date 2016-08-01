GLOBAL_MAPPER_SCRIPT VERSION="1.00"

// 
/* Converter arcinfo grids (asc files) para Elevation GeoTiff
/* Nota: substituir os caracteres { } pelo endereço das diectorias correspondestes C:\Exemplo\
//
DIR_LOOP_START \
	DIRECTORY="C:\Transfer\Foz_Reposicao_Jul_16\Cabo Sto Agostinho\Curvas" \
	FILENAME_MASKS="*dgn"

IMPORT \
	FILENAME="%FNAME_W_DIR%" \
	TYPE=DGN \
	PROJ="C:\Users\pmendonca\Documents\GitHub\GM-Scripting\Projections\SirGAS_25S.prj"

EXPORT_VECTOR \
	FILENAME="C:\Transfer\Foz_Reposicao_Jul_16\Cabo Sto Agostinho\Curvas\Shp_Areas\%FNAME_WO_EXT%.shp" \
	TYPE=SHAPEFILE \
	SHAPE_TYPE="AREAS" \
	INC_ELEV_ATTR=YES 
	
EXPORT_VECTOR \
	FILENAME="C:\Transfer\Foz_Reposicao_Jul_16\Cabo Sto Agostinho\Curvas\Shp_Lines\%FNAME_WO_EXT%.shp" \
	TYPE=SHAPEFILE \
	SHAPE_TYPE="LINES"\
	INC_ELEV_ATTR=YES 

EXPORT_VECTOR \
	FILENAME="C:\Transfer\Foz_Reposicao_Jul_16\Cabo Sto Agostinho\Curvas\Shp_Pts\%FNAME_WO_EXT%.shp" \
	TYPE=SHAPEFILE \
	SHAPE_TYPE="POINTS"	\
	INC_ELEV_ATTR=YES 
	
UNLOAD_ALL

DIR_LOOP_END

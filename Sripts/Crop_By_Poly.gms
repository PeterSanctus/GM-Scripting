GLOBAL_MAPPER_SCRIPT VERSION="1.00"

// 
/* Cortar dados usando um polígono
/* Nota: substituir os caracteres { } pelo endereço das diectorias correspondestes C:\Exemplo\
//

DIR_LOOP_START \
	DIRECTORY="G:\Foz_Recife\13_DSM_DTM\Cabo Sto Agostinho\ASC" \
	FILENAME_MASKS="*asc"

IMPORT \
	FILENAME="%FNAME_W_DIR%" \
	TYPE=ARCASCIIGRID \
	PROJ="C:\Users\pmendonca\Documents\GitHub\GM-Scripting\Projections\SirGAS_25S.prj"	
	
EXPORT_ELEVATION \
	ILENAME="G:\Foz_Recife\13_DSM_DTM\Cabo Sto Agostinho\ASC\Croped\%FNAME_WO_EXT%.asc" \
	TYPE=ARCASCIIGRID \
	SPATIAL_RES_METERS=1.0 \
	COORD_DELIM=SPACE \
	USE_CENTER_COORDS=YES \
	POLYGON_CROP_FILE="G:\Foz_Recife\13_DSM_DTM\Cabo Sto Agostinho\Cabo_St_A_Limite.dgn" \
	POLYGON_CROP_FILE_PROJ="C:\Users\pmendonca\Documents\GitHub\GM-Scripting\Projections\SirGAS_25S.prj"
	
UNLOAD_ALL

DIR_LOOP_END
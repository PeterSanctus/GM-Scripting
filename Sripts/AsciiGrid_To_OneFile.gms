GLOBAL_MAPPER_SCRIPT VERSION="1.00"

// 
/* Alterar a resolução da grid, resampling, de arcinfo grids (asc files) atrvés do método da média utilizando uma box de 3x3 como amostra
/* Nota: substituir os caracteres { } pelo endereço das diectorias correspondestes C:\Exemplo\
//
IMPORT_DIR_TREE \ 
	DIRECTORY="G:\Foz_Recife\14_Curvas\asc" \
	FILENAME_MASKS="*asc"
	TYPE=ARCASCIIGRID \
	PROJ="C:\Users\pmendonca\Documents\GitHub\GM-Scripting\Projections\SirGAS_25S.prj"

EXPORT_ELEVATION \
	FILENAME="G:\Foz_Recife\14_Curvas\Sto_Agostinho_DTM_Curvas.asc" \
	TYPE=ARCASCIIGRID \
	SPATIAL_RES_METERS=1 \
	COORD_DELIM=SPACE \
	USE_CENTER_COORDS=YES
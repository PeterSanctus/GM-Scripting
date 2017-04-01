GLOBAL_MAPPER_SCRIPT VERSION="1.00"

DIR_LOOP_START \
	DIRECTORY=H:\Apresentacao\GM_Scripting\grid_arcinfo\UTM_36s \
	FILENAME_MASKS="*asc"

IMPORT \
	FILENAME="%FNAME_W_DIR%" \
	TYPE=ARCASCIIGRID \
	PROJ="H:\Apresentacao\GM_Scripting\prj\WGS84_UTM_36S.prj"

EXPORT_ELEVATION \
	FILENAME="H:\Apresentacao\GM_Scripting\grid_arcinfo\UTM36S_Crop_30m\%FNAME_WO_EXT%.asc" \
	TYPE=ARCASCIIGRID \
	SPATIAL_RES_METERS=30.0 \
	POLYGON_CROP_FILE="H:\Apresentacao\GM_Scripting\dgn\Crop_Poly.dgn" \
	POLYGON_CROP_FILE_PROJ="H:\Apresentacao\GM_Scripting\prj\WGS84_UTM_36S.prj"

UNLOAD_ALL

DIR_LOOP_END

GLOBAL_MAPPER_SCRIPT VERSION="1.00"

DIR_LOOP_START DIRECTORY=H:\Apresentacao\GM_Scripting\grid_arcinfo\UTM_36s FILENAME_MASKS="*asc"

IMPORT FILENAME="%FNAME_W_DIR%" TYPE=ARCASCIIGRID PROJ="H:\Apresentacao\GM_Scripting\prj\WGS84_UTM_36S.prj"

LOAD_PROJECTION FILENAME="H:\Apresentacao\GM_Scripting\prj\Geographic_WGS84.prj"

EXPORT_ELEVATION FILENAME="H:\Apresentacao\GM_Scripting\grid_arcinfo\Geographic\%FNAME_WO_EXT%.asc" TYPE=ARCASCIIGRID SPATIAL_RES_METERS=1.0 

UNLOAD_ALL

DIR_LOOP_END
var file = get_open_filename_ext("json file|*.json", "", @"C:\Users\Administrator\GameMakerProjects\mario\datafiles", "open a map file");
var file_json = "debug-room.json";
if (file != "")
    file_json = file;

tilelayer = new rpg_tilelayer(0, 0, file_json, 0);
tilelayer.build();
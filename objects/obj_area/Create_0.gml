//mushroom kingdom map broken as fuck
//debug room works idk y

var file = get_open_filename_ext("json file|*.json", "", working_directory, "open a map file");
var file_json = "debug-room.json";
if (file != "")
    file_json = file;

tilelayer = new rpg_tilelayer(0, 0, file_json, 0);
tilelayer.build();

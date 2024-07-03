var tileset_1 = layer_get_id(tilelayer.tilemaps[0]._layer);
var tileset_2 = layer_get_id(tilelayer.tilemaps[1]._layer);
var tileset_3 = layer_get_id(tilelayer.tilemaps[2]._layer);

if (keyboard_check_pressed(ord(1)))
{
	var visible_tile1 = layer_get_visible(tileset_1);
	layer_set_visible(tileset_1, !visible_tile1);
}
if (keyboard_check_pressed(ord(2)))
{
	var visible_tile2 = layer_get_visible(tileset_2);
	layer_set_visible(tileset_2, !visible_tile2);
}
if (keyboard_check_pressed(ord(3)))
{
	var visible_tile3 = layer_get_visible(tileset_3);
	layer_set_visible(tileset_3, !visible_tile3);
}
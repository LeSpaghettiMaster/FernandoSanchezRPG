function rpg_tilelayer(_x, _y, _tilelayer, _depth) constructor
{		
	build = function()
	{
		var f = function(key, i)
		{
			key.build();
		}
		array_foreach(tilemaps, f, 0, infinity);
	}
	
	clean = function()
	{
		var f = function(key, i)
		{
			layer_tilemap_destroy(key._layer);	
		}
		array_foreach(tilemaps, f, 0, infinity);
	}
	
	tilemap = function(_data, _x, _y, _index = 0, _w = 1024, _h = 1024) constructor
	{
		built = false;
		
		x = _x;
		y = _y;
		index = _index + 1;
		
		data =	_data.tiledata;
		asset = tileset_index(_data.tileset);
		
		var t_layer = layer_create(0, $"tmap-{index}");
		_layer = layer_tilemap_create(t_layer, x, y, asset, _w / 16, _h / 16)
		
		build = function()
		{
			if (built)
				return;
				
			var tw = tilemap_get_width(_layer);
			var th = tilemap_get_height(_layer);
			
			var tx = 0;
			var ty = 0;
			
			for (var i = 0; i < array_length(data); i++)
			{
				var tile = data[i];
				
				tx += 0.5; // weird as fuck
				
				if (tx >= tw)
				{
					tx = 0;
					ty++;
				}
				
				if (tile != 0)
				{
					show_debug_message($"[ {tx} - {ty} ] -> {tile}");
					tilemap_set(_layer, tile, tx, ty);
				}
			}
				
			built = true;
		}
	}
	
	x = _x;
	y = _y;
	depth = _depth;
	
	tilemaps = [];	
	tilelayer = json_load(_tilelayer);
	
	var _bgid = layer_get_id("Background");
	var _bg = layer_background_get_id(_bgid);
	
	layer_background_blend(_bg, c_white);
	layer_background_blend(_bg, make_color_rgb(tilelayer.background_color.R, tilelayer.background_color.G, tilelayer.background_color.B));
	
	for (var i = 0; i < array_length(tilelayer.maps); i++)
	{
		var tmap = new tilemap(tilelayer.maps[i], x, y, i, tilelayer.width, tilelayer.height);
		array_push(tilemaps, tmap);
	}
	
}
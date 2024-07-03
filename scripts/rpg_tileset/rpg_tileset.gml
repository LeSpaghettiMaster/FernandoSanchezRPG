globalvar _tilesets;
_tilesets = [

	//houses, inside
	noone, 
	noone,
	
	noone,
	
	//towns 1
	ts_tileset_towns1_l1,
	ts_tileset_towns1_l2,
	
	//grasslands
	noone,
	
	//towns 2
	ts_tileset_towns2_l1,
	ts_tileset_towns2_l2
	
]

/*
"Houses, inside  (L1)",
"Houses, inside  (L2)",
"____",
"Keep, puzzles (L2)",
"Towns 1 (L1)",
"Towns 1 (L2)",
"Grasslands 1 (L1)",
"Towns 2 (L1)",
"Towns 2 (L2)",
"Sewers (L1)",
"Sewers (L2)",
"Keep, outside (L1)",
"____",
"____",
"Tower, entrance (L1)",
"Tower, entrance (L2)",
"Keep, puzzles (L1)",
"Keep, inside (L1,2)",
"Pipe Rooms (L1,2)",
"Mansion (L1)",
"Mansion (L2)",
"Forest Maze (L1)",
"Forest Maze (L2)",
"Sunken Ship (L1)",
"Sunken Ship (L2)",
"Mountains (L1)",
"Mountains (L2)",
"Underground (L1,2)",
"Underground (L1,2)",
"Tower, inside (L1)",
"Tower, inside (L2)",
"Seashore (L1)",
"Seashore (L2)",
"Plains (L1,2)",
"Underground 2 (L1)",
"Underground 2 (L2)",
"Riverside (L1)",
"Riverside (L2)",
"Clouds (L1)",
"Clouds (L2)",
"____",
"Culex (L1)",
"Culex (L2)",
"Grasslands 2 (L1)",
"Grasslands 2 (L2)",
"Waterfall (L1)",
"Waterfall (L2)",
"Nimbus Castle (L1)",
"Nimbus Castle (L2)",
"Yo'ster Isle (L1)",
"Yo'ster Isle (L2)",
"Smithy Factory (L1,2)",
"____",
"____",
"Count Down (L1)",
"____",
"Sanctuary (L1)",
"Sanctuary (L2)",
"Keep, inside (L1,2)",
"____",
"____",
"Shacks (L1)",
"Grasslands 1 (L2)",
"Keep, outside (L2)",
"Keep, throne (L1)",
"Keep, throne (L2)",
"Keep, inside (L1)",
"Keep, inside (L2)",
"Midas River (L2)",
"Water Tunnels (L1)",
"Water Tunnels (L2)",
"Suite (L1)",
"Volcano Map (L1)",
"Star Hill (L1,2)",
"Vista Hill (L1,2)",
"Marrymore Scene (L1,2)",
"Tower Balcony (L1,2)",
"Bean Valley (L1)",
"Bean Valley (L2)",
"Nimbus Land (L1)",
"Nimbus Land (L2)",
"Volcano, Map (L2)",
"Jinx's Dojo (L1,2)",
"Factory Grounds (L1,2)",
"____",
"Ending, Seashore (L1,2)",
"Ending, Keep (L1,2)",
"Ending, Toadofsky (L1)",
"Ending, Toadofsky (L2)",
"____",
"Ending, Yo'ster Isle (L1)",
"Ending, Yo'ster Isle (L2)",
"____"
*/

function tileset_index(_index)
{
	var _ind = _index - 1;
	if (_ind < 0 || _ind > array_length(_tilesets) - 1)
		return ts_tileset_blank;
	return _tilesets[_index - 1];
}
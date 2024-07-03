//meh
function approach(a, b, amount)
{
	amount = abs(amount);
	if (a < b)
	{
		a += amount;
		if a >= b
			return b;
	}
	else
	{
		a -= amount;
		if a <= b
			return b;
	}
	return a;
}

//meh
function trace()
{
	var _string = "";
	for (var i = 0; i < argument_count; i++)
		_string += string(argument[i]);
	show_debug_message(_string);
}

//peak
function concat()
{
	var _string = buffer_create(64, buffer_grow, 1);
	for (var i = 0; i < argument_count; ++i)
		buffer_write(_string, buffer_text, string(argument[i]));
	
	buffer_seek(_string, buffer_seek_start, 0);
	var s = buffer_read(_string, buffer_string);
	
	buffer_delete(_string);
	return s;
}

//this is so fucking useful it should actually be a built-in func imo
function draw_set_align(halign = fa_left, valign = fa_top)
{
	draw_set_halign(halign);
	draw_set_valign(valign);
}

//hate how they got rid of it in gms2 
function instance_create(x, y, obj, var_struct = {}, depth = 0)
{
	return instance_create_depth(x, y, depth, obj, var_struct);
}

function instance_create_once(x, y, object)
{
	if (instance_exists(object))
		return noone;
	var b = instance_create(x, y, object);
	return b;
}

function tile_spriteindex(asset, ind)
{
	
	var w = sprite_get_width(asset) / 16;
	var h = sprite_get_height(asset) / 16;
	
	var xx = 0;
	var yy = 0;
	
	for (var i = 0; i < ind; i++)
	{
		xx++;
		
		if (xx >= w)
		{
			xx = 0;
			yy++;
		}
	}

	return [xx * 16, yy * 16];
	
}

function string_load(fname)
{
	var buffer = buffer_load(fname);
	var str = buffer_read(buffer, buffer_string);
	buffer_delete(buffer);
	
	return str;
}

function json_load(fname)
{
	var str = string_load(fname);
	
	return json_parse(str);
}

function wave(from, to, duration, offset, time = noone)
{
	var a4 = (to - from) * 0.5;
	
	var t = current_time;
	if time != noone
		t = time;
	
	return from + a4 + (sin((((t * 0.001) + (duration * offset)) / duration) * (pi * 2)) * a4);
}

function vertex_build_point3D(_vertex_buffer, _x, _y, _z, _color, _alpha, _u, _v)
{
	vertex_position_3d(_vertex_buffer, _x, _y, _z);
	vertex_color(_vertex_buffer, _color, _alpha);
	vertex_texcoord(_vertex_buffer, _u, _v);
}

function vertex_build_quad3D(_buffer, _x, _y, _z, _width, _height, _color, _alpha, _u, _v, _p, _q)
{
	vertex_build_point3D(_buffer, _x, _y, _z, _color, _alpha, _u, _v);
	vertex_build_point3D(_buffer, _x + _width, _y, _z, _color, _alpha, _u + _p, _v);
	vertex_build_point3D(_buffer, _x, _y + _height, _z, _color, _alpha, _u, _v + _q);
	
	vertex_build_point3D(_buffer, _x + _width, _y, _z, _color, _alpha, _u + _p, _v);
	vertex_build_point3D(_buffer, _x + _width, _y + _height, _z, _color, _alpha, _u + _p, _v + _q);
	vertex_build_point3D(_buffer, _x, _y + _height, _z, _color, _alpha, _u, _v + _q);
}

#macro CAM_X obj_camera.cam_x
#macro CAM_Y obj_camera.cam_y

#macro CAM_W 256
#macro CAM_H 224

#macro GAME_W 256
#macro GAME_H 224
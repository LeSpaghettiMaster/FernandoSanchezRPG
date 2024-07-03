face = floor(dir / 45);
if (face == 8)
	face = 0;
	
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);

var move_h = -(key_left - key_right);
var move_v = (key_down - key_up);

x += move_h * spd;
y += move_v * spd;

if (move_h != 0 || move_v != 0)
	dir = point_direction(0, 0, move_h, move_v);

switch (face)
{
	case 0:
	case 8: //shouldnt happen, but incase it does
		sprite_index = spr_mario_right_walk;
		break;
	case 1:
		sprite_index = spr_mario_upright_walk;
		break;
	case 2:
		sprite_index = spr_mario_up_walk;
		break;
	case 3:
		sprite_index = spr_mario_upleft_walk;
		break;
	case 4:
		sprite_index = spr_mario_left_walk;
		break;
	case 5:
		sprite_index = spr_mario_downleft_walk;
		break;
	case 6:
		sprite_index = spr_mario_down_walk;
		break;
	case 7:
		sprite_index = spr_mario_downright_walk;
		break;
}
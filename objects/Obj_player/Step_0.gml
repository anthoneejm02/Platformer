/// @desc Core Player Logic

//Get player inputs
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_up);

//Calculate movement
var _move = key_right - key_left;

hsp = _move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,obj_ground)) && (key_jump)
{
	vsp = -jumpsp
}



//Horizontal Collision
if (place_meeting(x+hsp,y,obj_ground))
{
    while (!place_meeting(x+sign(hsp),y,obj_ground))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;


//Vertical Collision
if (place_meeting(x,y+vsp,obj_ground))
{
    while (!place_meeting(x,y+sign(vsp),obj_ground))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;



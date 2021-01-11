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

//Animation
if (!place_meeting(x,y+1,obj_ground))
{
	sprite_index = sprite_air;
	image_speed = 0;
	if (vsp > 0) image_index = 1; else image_index = 0;
	
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sprite_idle;
	}
	else
	{
		sprite_index = sprite_run;
	}
}

if (hsp != 0) image_xscale = -3*sign(hsp);

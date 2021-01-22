//Just hit
if (hitNow)
{
	sprite_index = sprite_Ienemy
	image_index = 0;
	hitNow = false;
	frameCount = 0;
	vsp = -2;
	
}

frameCount++;
if (frameCount > 20) 
{
	frameCount = 0;
	state = ENEMYSTATE.FREE;
}
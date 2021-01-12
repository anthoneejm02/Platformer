//Just hit
if (hitNow)
{
	sprite_index = sprite_Ienemy
	image_index = 0;
	hitNow = false;
	frameCount = 0;
}

frameCount++;
if (frameCount > 20) 
{
	frameCount = 0;
	state = ENEMYSTATE.FREE;
}
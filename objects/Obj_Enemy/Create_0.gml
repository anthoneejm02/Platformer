hitNow = false;
frameCount = 0;
flash = false;
state = ENEMYSTATE.FREE;
hp = 8;

enum ENEMYSTATE
{
	FREE,
	HIT,
	DEAD
}
image_index = irandom(10);
hitNow = false;
frameCount = 0;
flash = false;
state = ENEMYSTATE.FREE;
hp = 5;
walksp = 2.5;
hsp = walksp;
vsp = 0;
grv = 0.3;

enum ENEMYSTATE
{
	FREE,
	HIT,
	DEAD
}
image_index = irandom(10);
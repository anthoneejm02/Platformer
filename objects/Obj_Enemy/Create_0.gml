/// @desc Establish Some Key variables
hitNow = false;
frameCount = 0;
flash = false;
state = ENEMYSTATE.FREE;
hp = 4;

enum ENEMYSTATE
{
	FREE,
	HIT,
	DEAD
}
image_index = irandom(10);
hsp = 0;
vsp = 0;
grv = 0.3;
walksp = 4;
jumpsp = 9;

flash = 0;
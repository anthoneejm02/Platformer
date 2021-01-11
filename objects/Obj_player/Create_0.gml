/// @desc Establish Some Key variables

hsp = 0;
vsp = 0;
grv = 0.3;
walksp = 4;
jumpsp = 9;

state = PLAYERSTATE.FREE;
hitByAttack = ds_list_create();

enum PLAYERSTATE
{
	FREE,
	ATTACK_SLASH,
	ATTACK_COMBO
	
	
	
}
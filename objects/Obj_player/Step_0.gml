/// @desc Core Player Logic

//Get player inputs
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_up) || keyboard_check(ord("Space"));
key_attack = keyboard_check_pressed(vk_down);

switch (state)
{
	case PLAYERSTATE.FREE: PlayerState_Free(); break;
	case PLAYERSTATE.ATTACK_SLASH: PlayerState_Attack_SLash(); break;
	case PLAYERSTATE.ATTACK_SLASH: PlayerState_Attack_Combo(); break;
	
}



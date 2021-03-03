/// @description Insert description here
// You can write your code in this editor
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);
keyAttack = keyboard_check(ord("J"));
key_crouch = keyboard_check(vk_lcontrol);
switch (state)
{
	case PLAYERSTATE.FREE: PlayerState_Free(); break;
	case PLAYERSTATE.CROUCH: PlayerState_Crouch(); break;
	case PLAYERSTATE.ATTACK: PlayerState_Attack(); break;
	case PLAYERSTATE.DEAD: PlayerState_Dead(); break;
	case PLAYERSTATE.INTERACT: PlayerState_Attack(); break;
}

if(invuln > 0) invuln--;

//Attack
/*key_attack = keyboard_check(ord("J"));
downtime = downtime - 1;
if(key_attack && downtime<0){
	downtime = 10;
}*/
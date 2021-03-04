// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Attack(){
	//hsp = 0;
	
	if(sprite_index != pAttack && attack == 1)
	{
		sprite_index = pAttack;
		
		image_index = 0;
		ds_list_clear(hitByAttack);
	}
	if(sprite_index != pAttack2 && attack == 2){
		sprite_index = pAttack2;
		image_index = 0;
	}
	if(sprite_index != pAttack3 && attack == 3){
		sprite_index = pAttack3;
		image_index = 0;
	}
	
	alarm_set(0,2);
	alarm_set(2,3);
	if(global.PlayerHealth <= 0) state = PLAYERSTATE.DEAD;
	if(animation_end())
	{
		if(attack == 1){
			attack = 2;
		}
		else if(attack == 2){
			attack = 3;
		}
		else if(attack == 3){
			attack = 1;
		}
		sprite_index = pIdle;
		state = PLAYERSTATE.FREE;
	}
}
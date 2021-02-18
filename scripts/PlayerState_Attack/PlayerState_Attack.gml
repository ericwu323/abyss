// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Attack(){
	//hsp = 0;
	
	if(sprite_index != pAttack)
	{
		sprite_index = pAttack;
		image_index = 0;
		ds_list_clear(hitByAttack);
	}
	alarm_set(0,2);
	alarm_set(2,3);
	if(global.PlayerHealth <= 0) state = PLAYERSTATE.DEAD;
	if(animation_end())
	{
		sprite_index = pIdle;
		state = PLAYERSTATE.FREE;
	}
}
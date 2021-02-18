// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Dead(){
	sprite_index = pDead;
	if(animation_end()){
		image_speed = 0;
		alarm_set(1,45);
		invuln = 180;
	}
}
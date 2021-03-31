// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Jattack(){
	image_speed = 0.1;
	hsp = (key_right - key_left) * walksp;
	vsp = vsp + grv;
	if ((place_meeting(x,y+1,oWall)) && (key_jump))
	{
		vsp = -7;
	}

	if(place_meeting(x+hsp,y,oWall))
	{
		while (!place_meeting(x+sign(hsp),y,oWall))
		{
			x = x+sign(hsp);
		}
		hsp = 0;
	}
	if(sprite_index == pAirAttackmid || sprite_index == pAirAttackend){
		x = x + 0.4*hsp;
	}
	else
		x = x + hsp;
	
	
	

	if(place_meeting(x,y+vsp,oWall))
	{
		while (!place_meeting(x,y+sign(vsp),oWall))
		{
			y = y+sign(vsp);
		}
		vsp = 0;
	}
	if(sprite_index == pAirAttackrdy && !place_meeting(x,y+sign(vsp),oWall)){
		y = y - 3 ;
	}
	if(sprite_index == pAirAttackmid){
		y = y + 5;
	}
	y = y +vsp;
	
	if(sprite_index != pAirAttackrdy && sprite_index != pAirAttackmid && sprite_index != pAirAttackend){
		sprite_index = pAirAttackrdy;
		image_index = 0;
		
	}
	if(sprite_index == pAirAttackrdy && animation_end()){
		sprite_index = pAirAttackmid;
		image_index = 0;
		}
	
	if(place_meeting(x,y+vsp+10,oWall) && sprite_index != pAirAttackend){
		sprite_index = pAirAttackend;
		alarm_set(0,2);
		image_index = 0;
	}
	if(sprite_index == pAirAttackend && animation_end()){
		sprite_index = pIdle;
		state = PLAYERSTATE.FREE;
	}
	if(global.PlayerHealth <= 0) state = PLAYERSTATE.DEAD;
}
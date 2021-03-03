// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Crouch(){
	if(sprite_index != pCrouch){
		sprite_index = pCrouch;
		image_index = 0;
	}
	hsp = (key_right - key_left) * walksp;
	vsp = vsp + grv;
	/*if ((place_meeting(x,y+1,oWall)) && (key_jump))
	{
		vsp = -7;
	}*/
	
		

	if(place_meeting(x+hsp,y,oWall))
	{
		while (!place_meeting(x+sign(hsp),y,oWall))
		{
			x = x+sign(hsp);
		}
		hsp = 0;
	}
	x = x + 0.2*hsp;

	if(place_meeting(x,y+vsp,oWall))
	{
		while (!place_meeting(x,y+sign(vsp),oWall))
		{
			y = y+sign(vsp);
		}
		vsp = 0;
	}
	y = y +vsp;

	//Animation
	/*if(!place_meeting(x,y+1,oWall))
	{
		image_speed = 0.1;
		sprite_index = pJump;
		if(image_index == 2){
			image_speed = 0;
		}
	}
	else
	{
		image_speed = 0.1;
		if(hsp == 0)
		{
			sprite_index = pIdle;
		}
		else
		{
			image_speed = 0.1;
			sprite_index = pRun;
		}
	}
	*/
	if(hsp!=0) image_xscale = sign(hsp);
	if(image_xscale < 0) faceRight = false;
	else faceRight = true;
	if(global.PlayerHealth <= 0) state = PLAYERSTATE.DEAD;
	if(!key_crouch) state = PLAYERSTATE.FREE;
	if(keyAttack && vsp == 0) state = PLAYERSTATE.ATTACK;
}
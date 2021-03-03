// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MechaState_Free(){
	attack++;
	vsp = vsp + grv;
	
	/*if(place_meeting(x+hsp,y,oWall))
	{
		while (!place_meeting(x+sign(hsp),y,oWall))
		{
			x = x+sign(hsp);
		}
		hsp = -hsp;
	}
	x = x +hsp;*/
	if(Player.x > x){
		image_xscale = 1;
		x = x-hsp;
	}
	else if(Player.x < x){
		image_xscale = -1;
		x = x+hsp;
	}
	if(place_meeting(x,y+vsp,oWall))
	{
		
		while (!place_meeting(x,y+sign(vsp),oWall))
		{
			y = y+sign(vsp);
		}
		vsp = 0;
	}
	y = y +vsp;
	//if(hsp!=0) image_xscale = sign(hsp);
	if(hp <= 0){
		state = MECHASTATE.DIE;
	}
	if(attack % 600 == 0 || attack == 60){
		state = MECHASTATE.LASER;
	}
	if(hit % 8 == 0 && hit != 0){
		state = MECHASTATE.BLOCK;
	}
	if(collision_circle(x,y,100,Player,false,true)){
		state = MECHASTATE.MELEE;
	}
	
}
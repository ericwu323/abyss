// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MechaState_Melee(){
	attack++;
	if(sprite_index != smechagolemmelee){
		sprite_index = smechagolemmelee;
		image_index = 0;
	}
	if(image_index > 6 && image_xscale == -1){
		instance_create_depth(x-100,y,depth,mechagolemmeleeHB);
	}
	if(image_index > 6 && image_xscale == 1){
		instance_create_depth(x+100,y,depth,mechagolemmeleeHB);
	}
	if(hp<= 0){
		state = MECHASTATE.DIE;
	}
	if(attack % 600 == 0 || attack == 60){
		state = MECHASTATE.LASER;
	}
	if(hit % 8 == 0 && hit != 0){
		state = MECHASTATE.BLOCK;
	}
	if(animation_end())
	{
		sprite_index = smechagolem;
		state = MECHASTATE.FREE;
	}
	
}
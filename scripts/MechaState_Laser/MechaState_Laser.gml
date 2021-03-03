// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MechaState_Laser(){
	if(sprite_index != smechagolemlaser){
		sprite_index = smechagolemlaser;
		image_index = 0;
	}
	if(hp<= 0){
		state = MECHASTATE.DIE;
	}
	if(image_index == 6 && image_xscale == -1){
		instance_create_depth(x-10,y-68,depth-50,olasereye);
	}
	if(image_index == 6 && image_xscale == 1){
		instance_create_depth(x+10,y-68,depth-50,olasereye);
	}

	if(animation_end()){
		
		sprite_index = smechagolem;
		state = MECHASTATE.FREE;
	}
	
}
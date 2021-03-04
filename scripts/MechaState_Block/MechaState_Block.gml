// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MechaState_Block(){
	if(sprite_index != smechagolemblock){
		
		sprite_index = smechagolemblock;
		image_index = 0;
	}
	if(hp<= 0){
		state = MECHASTATE.DIE;
	}
	if(image_index > 7){
		instance_create_layer(x,y,layer,oshield);
	}
	if(animation_end()){
		hit++;
		sprite_index = smechagolem;
		state = MECHASTATE.FREE;
	}
}
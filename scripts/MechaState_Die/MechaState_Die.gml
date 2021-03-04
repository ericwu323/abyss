// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MechaState_Die(){
	if(sprite_index != smechagolemdie){
		
		sprite_index = smechagolemdie;
		image_index = 0;
	}
	if(animation_end()){
		image_speed = 0;
		with(instance_create_layer(x,y,layer,coin))
			hsp =3;
		instance_create_layer(x,y,layer,okey);
		with(instance_create_layer(x,y,layer,coin))
			hsp =-3;
		instance_create_layer(x,y,layer,coin);
		instance_destroy();
	}
}
/// @description Insert description here
// You can write your code in this editor
if(collision_circle(x,y,radius,Player,false,true)){
		//sprite_index = sAbyssdestroy;
		//image_angle = 0;
		instance_create_layer(x,y,"portal",Abyss);
		
		alarm_set(0,60);
		
	}
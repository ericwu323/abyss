/// @description Insert description here
// You can write your code in this editor
if(animation_end()){
	instance_destroy();
	with(instance_create_layer(x-28,y+30,layer,coin))
		hsp =3;
	instance_create_layer(x-28,y+30,layer,coin);
}
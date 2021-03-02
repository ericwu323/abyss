/// @description Insert description here
// You can write your code in this editor
if(!has_been_interacted){
	if(collision_circle(x,y,radius,Player,false,true)){
		has_been_interacted = true;
		sprite_index = scorpse2;
		instance_create_layer(x,y,layer,coin);
	}
	popup_id.visible = false;
}
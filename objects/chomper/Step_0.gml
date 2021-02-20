/// @description Insert description here
// You can write your code in this editor
if(!attacking){
	if(collision_circle(x,y,80,Player,false,true)){
		if(Player.x < x)
			playerRight = false;
		else
			playerRight = true;
		attacking = true; 
	}                    
}
if(attacking){ 
	if(playerRight == true){
		sprite_index = schompright;
		if(image_index > 4){
			instance_create_depth(x+72,y-70, depth-1, chompHB);
		}
	}
	if(playerRight == false){
		sprite_index = schompleft;
		if(image_index > 4){
			instance_create_depth(x-72, y-70, depth-1, chompHB);
		} 
	}
	if(animation_end()){
		sprite_index = schomper;
		attacking = false;
	}
}

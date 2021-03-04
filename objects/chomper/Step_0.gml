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
		if(sprite_index != schompright){
			sprite_index = schompright;
			image_index = 0;
		}
		if(image_index > 4){
			instance_create_depth(x+72,y-50, depth-1, chompHB);
		}
	}
	if(playerRight == false){
		if(sprite_index != schompleft){
			sprite_index = schompleft;
			image_index = 0;
		}
		if(image_index > 4){
			instance_create_depth(x-72, y-50, depth-1, chompHB);
		} 
	}
	if(animation_end()){
		sprite_index = schomper;
		attacking = false;
	}
}

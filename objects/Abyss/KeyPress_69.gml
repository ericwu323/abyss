 /// @description Insert description here
// You can write your code in this editor
if(!has_been_interacted){
	if(collision_circle(x,y,radius,Player,false,true))&& (!instance_exists(oText)){
		has_been_interacted = true;
		with(oWall){
			Abyssready = true;
		}
		with(instance_create_layer(x,y-64,layer,oText)) 
		{
			text = other.text;
			length = string_length(text);
		}
		if(instance_exists(oCamera)){
			with(oCamera)
			{
				follow = other.id;       
			 
			}
		}
	}     
	popup_id.visible = false;
	
}
/*else{
	if(collision_circle(x,y,radius,Player,false,true)){
		//sprite_index = sAbyssdestroy;
		//image_angle = 0;
		instance_create_layer(x,y,"portal",Abyss);
		
		alarm_set(0,60);
		
	}
}
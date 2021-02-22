/// @description Insert description here
// You can write your code in this editor
if(instance_exists(oText) && collision_circle(x,y,radius,Player,false,true) && has_been_interacted == true && global.Coins < 5){
	instance_create_layer(x,y-64,layer-1,oText) 
	oText.text = "Insufficient coins";
	length = string_length(text);
		
}
if(instance_exists(oText) && collision_circle(x,y,radius,Player,false,true) && has_been_interacted && global.Coins > 5){
	global.Coins = global.Coins - 5;
	array_push(global.items,osteak); 
	instance_destroy();
}
if(!has_been_interacted){
	if(collision_circle(x,y,radius,Player,false,true))&& (!instance_exists(oText)){
		has_been_interacted = true;
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

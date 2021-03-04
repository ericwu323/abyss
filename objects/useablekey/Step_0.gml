/// @description Insert description here
// You can write your code in this editor
/*if(use && collision_circle(Player.x,Player.y,100,oWall,false,true)){
	if(oWall.lockedwall == true){
		with(oWall){
			if(oWall.lockedwall == true){
				instance_destroy();
			}
		}
			with(Inventory){
				array_delete(global.useableitems,a,1);
				array_delete(global.items,a,1);
				if(a != 0)
					a--;
			}
		}
	instance_destroy();
	
}*/



if(use /*&& !collision_circle(Player.x,Player.y,100,oWall,false,true)*/){
	instance_create_layer(Player.x,Player.y,layer,ounlocker)
	
	with(instance_create_layer(Player.x,Player.y-64,layer,oText)) 
		{
			text = "Cannot be used at the moment";
			length = string_length(text);
		}
	
	use = false;
}

/// @description Insert description here
// You can write your code in this editor
if(lockedwall == true){
	instance_destroy();
	with(oText){
		instance_destroy();
	}
	with(instance_create_layer(Player.x,Player.y-64,layer,oText)) 
			{
				text = "Door unlocked!";
				length = string_length(text);
			}
	with(Inventory){
				array_delete(global.useableitems,a,1);
				array_delete(global.items,a,1);
				if(a != 0)
					a--;
			}
	
}
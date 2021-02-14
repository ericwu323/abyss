/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if(hp<= 0)
	{
		with(instance_create_layer(x,y-60,layer,BigSlimeDead))
		{
			direction = other.hitfrom;
			hsp = lengthdir_x(3,direction);
			vsp = lengthdir_y(-3,direction) -5;
			image_xscale = sign(hsp);
		}
		instance_destroy();
	}
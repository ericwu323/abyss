/// @description Insert description here
// You can write your code in this editor
if(circle){
	if(collision_circle(x,y,25,Player,false,true)){
		sprite_index = scoinspickup;
		circle = false;
	}
}
if(!circle){
	if(animation_end()){
		instance_destroy();
		global.Coins++;
	}
}
if(done ==0)
{
	image_speed = 0.1;
	vsp = vsp + grv;
	if(place_meeting(x+hsp,y,oWall))
	{
		while (!place_meeting(x+sign(hsp),y,oWall))
		{
			x = x+sign(hsp);
		}
		hsp = 0;
	}
	x = x +hsp;

	if(place_meeting(x,y+vsp,oWall))
	{

		if(vsp>0){
			done = 1;
		}
		while (!place_meeting(x,y+sign(vsp),oWall))
		{
			y = y+sign(vsp);
		}
		vsp = 0;
	}
	y = y +vsp;
}
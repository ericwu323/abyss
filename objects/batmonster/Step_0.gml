 /// @description Insert description here
// You can write your code in this editor
  	image_speed = 0.1;
	vsp = vsp + grv;
if(!attacking){
	//ledges interaction
	if(grounded) && (afraidofheights) && (!place_meeting(x+hsp,y+1,oWall)){
		hsp = -hsp;
	}
	
	//collision
	if(place_meeting(x+hsp,y,monsterwall))
	{
		while (!place_meeting(x+sign(hsp),y,monsterwall ))
		{
			x = x+sign(hsp);
		}
		hsp = -hsp;
	} 
	x = x +hsp;

	if(place_meeting(x,y+vsp+height,oWall))
	{
		
		while (!place_meeting(x,y+height+sign(vsp),oWall))
		{
			y = y+sign(vsp);
		}
		vsp = 0;
	}
	y = y +vsp;
	if(hsp!=0) image_xscale = sign(hsp);

	//Animation
	if(!place_meeting(x,y+60,oWall))
	{
		grounded = false;
		/*sprite_index = Sprite9;
		if(sign(vsp) > 0) image_index = 0; else image_index = 0;*/
	}
	else
	{
		grounded = true; 
		/*image_speed = 0.1;
		if(hsp == 0)
		{
			sprite_index = Sprite9;
		}
		else
		{
			image_speed = 0.1;
			sprite_index = Sprite9;
		}*/
	}
	
	/*if(collision_circle(x,y,15,Player,false,true)){
		faceRight = sign(hsp);
		chsp = hsp;
		attacking = true;
	}*/
	                     
}/*
if(attacking){ 
	hsp = 0;
	sprite_index = sbluemonsterattack;
	if(image_index > 7){	
		instance_create_depth(x, y, depth-1, BounceAttackHB);
	}

	if(animation_end()){
		sprite_index = sbluemonster;
		attacking = false;
		hsp = chsp;
	}
}
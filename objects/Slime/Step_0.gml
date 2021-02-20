  	image_speed = 0.1;
	vsp = vsp + grv;
if(!attacking){
	//ledges interaction
	if(grounded) && (afraidofheights) && (!place_meeting(x+hsp,y+1,oWall)){
		hsp = -hsp;
	}
	
	//collision
	if(place_meeting(x+hsp,y,oWall))
	{
		while (!place_meeting(x+sign(hsp),y,oWall))
		{
			x = x+sign(hsp);
		}
		hsp = -hsp;
	}
	x = x +hsp;

	if(place_meeting(x,y+vsp,oWall))
	{
		
		while (!place_meeting(x,y+sign(vsp),oWall))
		{
			y = y+sign(vsp);
		}
		vsp = 0;
	}
	y = y +vsp;
	if(hsp!=0) image_xscale = -sign(hsp);

	//Animation
	if(!place_meeting(x,y+1,oWall))
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
	
	if(collision_circle(x,y,15,Player,false,true)){
		faceRight = sign(hsp);
		chsp = hsp;
		attacking = true;
	}
	                     
}
if(attacking){ 
	hsp = 0;
	sprite_index = ssmallattack;
	if(image_index > 7){	
		instance_create_depth(Slime.x, Slime.y, depth-1, BounceAttackHB);
	}

	if(animation_end()){
		sprite_index = sSmallSlime;
		attacking = false;
		hsp = chsp;
	}
}

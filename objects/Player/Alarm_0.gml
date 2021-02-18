/// @description attack frame 2
// You can write your code in this editor
if(faceRight = false)
	instance_create_depth(Player.x-10, Player.y, depth-1, PlayerSlashHB);
else
	instance_create_depth(Player.x+10, Player.y, depth-1, PlayerSlashHB);
//if(hsp!=0) image_xscale = sign(hsp);
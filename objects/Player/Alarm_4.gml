/// @description jAatack frame 
// You can write your code in this editor
if(faceRight = false)
	instance_create_depth(Player.x-5, Player.y, depth-1, PlayerSlashHB);
else
	instance_create_depth(Player.x+5, Player.y, depth-1, PlayerSlashHB);
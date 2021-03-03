 /// @description Insert description here
// You can write your code in this editor
hsp = -1;
vsp = 0;
grv = 0.3;
hp = 120;
walksp = 1; 
flash = 0;
faceRight = false;
state = MECHASTATE.FREE;
attack = 0;
hit = 0;
image_speed = 0.1;

enum MECHASTATE
{
	FREE,
	MELEE,
	LASER,
	BLOCK,
	DIE
	
} 
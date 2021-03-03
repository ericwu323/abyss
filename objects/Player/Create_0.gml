hsp = 0;
vsp = 0;
grv = 0.3;
walksp = 5; 
flash = 0;
invuln = 0;
faceRight = true;
state = PLAYERSTATE.FREE;
hitByAttack = ds_list_create();
attack = 1;
image_speed = 0.1;

enum PLAYERSTATE
{
	FREE,
	ATTACK,
	DEAD,
	INTERACT,
	CROUCH
	
}
//downtime = 0;
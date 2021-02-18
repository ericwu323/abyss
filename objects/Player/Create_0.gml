hsp = 0;
vsp = 0;
grv = 0.3;
walksp = 5; 
flash = 0;
invuln = 0;
faceRight = true;
state = PLAYERSTATE.FREE;
hitByAttack = ds_list_create();


enum PLAYERSTATE
{
	FREE,
	ATTACK,
	DEAD,
	INTERACT
	
}
//downtime = 0;
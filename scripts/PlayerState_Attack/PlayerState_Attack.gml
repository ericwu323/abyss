// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Attack(){
	//hsp = 0;
	
	if(sprite_index != pAttack)
	{
		sprite_index = pAttack;
		image_index = 0;
		ds_list_clear(hitByAttack);
	}
	alarm_set(0,2);
	alarm_set(2,3)
	/*mask_index = SlashHB;
	var hitByAttackNow = ds_list_create();
	var hits = instance_place_list(x,y,Slime,hitByAttackNow,false);
	if(hits>0)
	{
		for(var i = 0 ; i<hits;i++)
		{
			var hitID = hitByAttackNow[| i];
			if(ds_list_find_index(hitByAttack, hitID == -1))
			{
				ds_list_add(hitByAttack,hitID);
				with(hitID)
				{
					EnemyHit(2 );
				}
			}
		}
	}
	ds_list_destroy(hitByAttackNow);
	mask_index = pIdle;*/
	if(animation_end())
	{
		sprite_index = pIdle;
		state = PLAYERSTATE.FREE;
	}
}
hsp = 0;
vsp = 0;

//Start of the attack
if (sprite_index != sprite_attack)
{
	sprite_index = sprite_attack;
	image_index = 0;
	ds_list_clear(hitByAttack);
}

//Use attack hitbox & check for hits
mask_index = sprite_attackHB;
var hitByAttackNow = ds_list_create();
var hits = instance_place_list(x,y,Obj_Enemy,hitByAttackNow,false);
if (hits > 0)
{
	for (var i = 0; i < hits; i++)
	{
		//If this instance has not yet been hit by this attack
		var hitID = hitByAttackNow[| i];
		if (ds_list_find_index(hitByAttack,hitID) == -1)
		{
			ds_list_add(hitByAttack,hitID);
			with (hitID)
			{
				EnemyHit(2);
			}			
		}		
	}		
}
ds_list_destroy(hitByAttackNow);
mask_index = sprite_idle;

if (image_index > image_number-1)
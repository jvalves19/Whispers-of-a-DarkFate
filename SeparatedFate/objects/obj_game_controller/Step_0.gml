if(game_over){
	instance_deactivate_object(obj_pause);
	global.spd_mult = 0.5;
}

//CONTROLL SPELLS
#region SPELLS
for(i=0; i<3; i++){
	if(global.currentSpell == i){
		global.controllSpells[i] = true;
	}
}
if(global.currentSpell == -1) global.spell = spr_actSpell;
if(global.currentSpell == 0) global.spell = spr_actSpell1;
if(global.currentSpell == 1) global.spell = spr_actSpell2;
if(global.currentSpell == 2) global.spell = spr_actSpell3;
#endregion

//CONTROLL POWERS
#region POWERS
for(i=0; i<3; i++){
	if(global.currentPower == i){
		global.controllPowers[i] = true;
	}
}
if(global.currentPower == -1) global.power = spr_actPower;
if(global.currentPower == 0) global.power = spr_actPower1;
if(global.currentPower == 1) global.power = spr_actPower2;
#endregion

#region DIALOGUE SYSTEM
if(instance_exists(obj_dialogo)){
	global.dialogo = true;
}

if(global.dialogo){
	instance_deactivate_object(obj_pause);
}
#endregion

#region KEY SYSTEM
if(object_exists(obj_player)){
	global.key[global.numKey] = global.key[global.numKey];
}
#endregion

#region BOSS
//BOSS EVENTS
if(global.bossBattle){
	instance_deactivate_object(obj_sensor);
}
else{
	instance_activate_object(obj_sensor);
}

if(bossDead){
	global.spd_mult = 0.5;
	instance_deactivate_object(obj_sensor);
}
#endregion

#region PLAYER
//PLAYER EVENTS
if(object_exists(obj_player) || object_exists(obj_owPlayer)){
	global.actRoom = room;
}

if(global.actRoom == rm_world){		
	with(global.actPlayer){
		instance_change(obj_owPlayer, true);
	}
	
	global.actPlayer = global.owPlayerID;
	

	audio_play_sound(msc_world, 500, true);
	audio_sound_gain(msc_world, 0.045, 0);
}

if(global.actRoom != rm_world){	
	audio_stop_sound(msc_world);

	
	with(global.actPlayer){
		instance_change(obj_player, true);
	}
	
	global.actPlayer = global.playerID;
}
#endregion


if(keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0, gp_face1)){
	if(game_over){
		if(room == rm_firstBoss){
			instance_deactivate_object(obj_pause);
			room_goto(rm_cutsc01);
		
			obj_player.life = global.pMaxLife;
			obj_player.aura = global.pMaxAura;
			obj_player.state = "idle";
		}
		else{
			game_restart();
		}
	}

	if(bossDead){	
		global.pMaxLife += 400;
		global.pMaxAura += 250;
		global.pAtk += 20;
	
		obj_player.life = global.pMaxLife;
		obj_player.aura = global.pMaxAura;
		
		global.bossBattle = false;
		global.spd_mult = 1;
		game_over = false;
		bossDead = false;
		value = 0;	
	}	
}
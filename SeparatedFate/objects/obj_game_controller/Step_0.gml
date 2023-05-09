#region GAME CONTROLLERS
global.currentBlade = global.currentBlade;
if(keyboard_check_pressed(vk_lcontrol)){
	global.currentBlade = 2;
}
if(keyboard_check_pressed(vk_lshift)){
	global.currentBlade = 1;
}
if(keyboard_check_pressed(vk_alt)){
	global.currentBlade = 0;
}

global.playerXP = global.playerXP;
global.playerLevel = global.playerLevel;
global.playerGold = global.playerGold;

if(global.playerLevel >= global.playerMaxLevel){
	if(global.playerXP > global.playerMaxXP){
		global.playerGold += 1000;
		global.playerMaxXP = global.playerLevel * 500
	}
} 
if(global.playerLevel < global.playerMaxLevel){
	if(global.playerXP > global.playerMaxXP){
		global.playerLevel += 1;
		global.playerMaxXP = global.playerLevel * 500
	}
}

if(game_over){
	instance_deactivate_object(obj_pause);
	global.spd_mult = 0.5;
} 
if(bossDead){
	instance_deactivate_object(obj_sensor);
	global.spd_mult = 0.5;
}

if(keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0, gp_face1)){
	if(game_over){
		if(room == rm_firstBoss){
			game_over = false;
			instance_deactivate_object(obj_pause);
			room_goto(rm_cutsc01);
			obj_player.life = global.pMaxLife;
			obj_player.aura = global.pMaxAura;
			obj_player.state = "idle";			
		}
		else{
			game_restart();
		}
		global.spd_mult = 1;
	}

	if(bossDead){	
		global.pMaxLife += 400;
		global.pMaxAura += 250;
		global.pAtk += 20;
	
		obj_player.life = global.pMaxLife;
		obj_player.aura = global.pMaxAura;
		
		global.bossBattle = false;
		global.spd_mult = 1;
		bossDead = false;
		value = 0;	
	}	
}
#endregion

#region PICK ITEMS
for(i=0; i<3; i++){
	if(global.currentItem == i){
		global.controllItems[i] = true;
	}
}
#endregion

#region SPELLS
for(i=0; i<3; i++){
	if(global.currentSpell == i){
		global.controllSpells[i] = true;
	}
}
if(global.currentSpell == 0) {
	global.pDmgSpell = global.dmgThunder; 
	global.auraGasta = 50;
}
if(global.currentSpell == 1) {
	global.pDmgSpell = global.dmgFire; 
	global.auraGasta = 100;
}
if(global.currentSpell == 2) {
	global.pDmgSpell = global.dmgHoly; 
	global.auraGasta = 50;
}
#endregion

#region POWERS
for(i=0; i<3; i++){
	if(global.currentUltimate == i){
		global.controlleUltimate[i] = true;
	}
}
if(global.currentUltimate == 0) {
	global.auraGasta = 30;
}
if(global.currentUltimate == 1) {
	global.auraGasta = 50;
}
#endregion

#region DIALOGUE SYSTEM
if(instance_exists(obj_dialogo)){
	global.dialogo = true;
}
#endregion

#region KEY SYSTEM
if(object_exists(obj_player)){
	global.key[global.numKey] = global.key[global.numKey];
}
#endregion

#region BOSS
//BOSS EVENTS

if(!global.destroyed[2]){
	if(room == rm_firstBoss2){
		if(!instance_exists(obj_samurai)){
			instance_create_layer(572, 320, "Instances", obj_samurai);
		}
	}
}
if(!global.destroyed[3]){
	if(room == rm_firstBoss3){
		if(!instance_exists(obj_cultist)){
			instance_create_layer(440, 336, "Instances", obj_cultist);
		}
	}
}

if(global.bossBattle){
	instance_deactivate_object(obj_sensor);
}
else{
	instance_activate_object(obj_sensor);
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
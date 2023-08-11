#region GAME CONTROLLERS
global.currentBlade = global.currentBlade;
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
		if(room == rm_boss){
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
		if(room == rm_boss){
			game_over = false;
			instance_deactivate_object(obj_pause);
			room_goto(rm_cutscEnd1);
		}
		
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
for(i=0; i<=array_length(global.controllItems); i++){
	if(global.currentItem == i){
		global.controllItems[i] = true;
	}
}
if(global.auraPotionQtd == 0)	global.controllItems[1] = false;
if(global.damagePotionQtd == 0)	global.controllItems[2] = false;
if(global.spellPotionQtd == 0)	global.controllItems[3] = false;
#endregion

#region SPELLS
for(i=0; i<=array_length(global.controllSpells); i++){
	if(global.currentSpell == i){
		global.controllSpells[i] = true;
	}
}
if(global.currentSpell == 0) {
	global.pDmgSpell = global.dmgThunder; 
	global.auraSpell = 20;
}
if(global.currentSpell == 1) {
	global.pDmgSpell = global.dmgFire; 
	global.auraSpell = 50;
}
if(global.currentSpell == 2) {
	global.pDmgSpell = global.dmgHoly; 
	global.auraSpell = 20;
}
#endregion

#region ULTIMATE
for(i=0; i<=array_length(global.controllUltimate); i++){
	if(global.currentUltimate == i){
		global.controllUltimate[i] = true;
	}
}
if(global.currentUltimate == 0) {
	global.auraUltimate = 30;
}
if(global.currentUltimate == 1) {
	global.auraUltimate = 50;
}
if(global.currentUltimate == 2) {
	global.auraUltimate = 50;
}
#endregion

#region KEY SYSTEM
if(object_exists(obj_player)){
	global.key[global.numKey] = global.key[global.numKey];
}
#endregion

#region DIALOGUE SYSTEM
if(instance_exists(obj_dialogo)){
	global.dialogo = true;
}

if(room == rm_graveyard1 && global.sceneNumber == -1){
	var _dialogue = obj_dialogo
	
	global.scene_info = [
		[cutscene_changeVariable, obj_player, "obj_player.state", "idle"],
		[cutscene_moveCharacter, obj_player, 4, 0, true, 4],
	
		[cutscene_instance_create, x, y, "Dialogue", _dialogue],
		[cutscene_changeVariable, _dialogue, "npc_nome", "Kassius"],
		[cutscene_wait, 1],
		[cutscene_changeGVariable, "sceneNumber", 0]
	];	
	
	if(!instance_exists(obj_cutscene) && global.sceneNumber == -1) create_cutscene(global.scene_info);
	if(global.sceneNumber == 0) instance_destroy(obj_cutscene);
}
if(room == rm_boss2 && !global.destroyed[2]){
	var _dialogue = obj_dialogo
	
	global.scene_info = [
		[cutscene_moveCharacter, obj_player, 140, 0, true, 4],
	
		[cutscene_instance_create, x, y, "Dialogue", _dialogue],
		[cutscene_changeVariable, _dialogue, "npc_nome", "Kassius"],
	
		[cutscene_wait, 1],
		
		[cutscene_stopSound, msc_bossBattle2],
		[cutscene_playSound, msc_bossBattle2, 1, true],
		[cutscene_soundGain, msc_bossBattle2, 1, 0],
		
		[cutscene_changeGVariable, "sceneNumber", 1]
	];
	
	if(!instance_exists(obj_cutscene) && global.sceneNumber == 0) create_cutscene(global.scene_info);
	if(global.sceneNumber == 1){
		instance_destroy(obj_cutscene);
		if(!instance_exists(obj_dialogo)) global.bossBattle = true;
	}
}
#endregion

#region BOSS
if(!global.destroyed[1]){
	if(room == rm_boss){
		if(!instance_exists(obj_garleand)){
			instance_create_layer(552, 312, "Instances", obj_garleand);
		}
	}
}
if(!global.destroyed[2]){
	if(room == rm_boss2){
		if(!instance_exists(obj_samurai)){
			instance_create_layer(572, 320, "Instances", obj_samurai);
		}
	}
}
if(!global.destroyed[3]){
	if(room == rm_boss3){
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
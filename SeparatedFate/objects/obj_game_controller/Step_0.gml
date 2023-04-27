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
x1 = obj_player.x;
y1 = obj_player.y;
x2 = obj_player.x + obj_player.sprite_width/obj_player.sprite_width;
y2 = obj_player.y - obj_player.sprite_height;

if(collision_rectangle(x1, y1, x2, y2, obj_item, false, false)){
	itemInstanceID = collision_rectangle(x1, y1, x2, y2, obj_item, false, false);
	item = itemInstanceID.image_index;
	
	if(itemInstanceID.canBePicked) pickItems(item, itemInstanceID);
}
#endregion
#region INVENTORY

if(showInventory){	
	//Change Items
	if(gamepad_button_check(0, gp_padu) || keyboard_check_pressed(vk_down)){
		if(selectedItem + 1) <= (maxInvSlots - 1) selectedItem++;
		else selectedItem = 0;
	}
	if(gamepad_button_check(0, gp_padd) || keyboard_check_pressed(vk_up)){
		if(selectedItem - 1) >= 0 selectedItem--;
		else selectedItem = (maxInvSlots - 1);
	}
	item = global.a_inv[selectedItem, e_inventory.type];
	
	//Drop Items
	if(keyboard_check_pressed(ord("I")) || gamepad_button_check_pressed(0, gp_face4)){
		//item = a_inv[selectedItem];
		
		useItem(item);
	}
}

#endregion
#region SPELLS
for(i=0; i<3; i++){
	if(global.currentSpell == i){
		global.controllSpells[i] = true;
	}
}
if(global.currentSpell == -1) global.spell = spr_actSpell;
if(global.currentSpell == 0) {
	global.spell = spr_actSpell1;
	global.pDmgSpell = global.dmgThunder
}
if(global.currentSpell == 1) {
	global.spell = spr_actSpell2;
	global.pDmgSpell = global.dmgFire
}
if(global.currentSpell == 2) {
	global.spell = spr_actSpell3;
	global.pDmgSpell = global.dmgHoly;
}
#endregion

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
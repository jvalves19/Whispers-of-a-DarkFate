/// @description Insert description here
// You can write your code in this editor

if(global.destroyed){
	instance_deactivate_object(global.bossName);
	audio_stop_sound(msc_bossBattle);
}

if(global.destroyed2){
	instance_deactivate_object(global.bossName2);
	audio_stop_sound(msc_bossBattle2);
}
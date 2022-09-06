/// @description Insert description here
// You can write your code in this editor

for(i=1; i<=2; i++){
	if(global.destroyed[i]){
		instance_deactivate_object(global.bossName[i]);
		//audio_stop_sound(msc_bossBattle);
	}
}

if(global.destroyed[1]){
	instance_deactivate_object(global.bossName[1]);
	audio_stop_sound(msc_bossBattle);
}
if(global.destroyed[2]){
	instance_deactivate_object(global.bossName[2]);
	audio_stop_sound(msc_bossBattle2);
}
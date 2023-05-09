/// @description Insert description here
// You can write your code in this editor
/*
for(i=1; i<=10; i++){
	if(global.destroyed[i]){
		//instance_deactivate_object(global.bossName[i]);
	}
}
*/

if(global.destroyed[1]){
	audio_stop_sound(msc_bossBattle);
}

if(global.destroyed[2]){					
	audio_stop_sound(msc_bossBattle2);
}

if(global.destroyed[3]){					
	audio_stop_sound(msc_bossBattle3);
}
/// @description Insert description here
// You can write your code in this editor

damage = 0;
father = noone;

//Create a checklist to see if I can hit the target
apply_damage = ds_list_create();

if(global.currentBlade == 0){
	image_alpha = 0;
	
	audio_play_sound(snd_sword, 10, false);
}

if(global.currentBlade == 1){
	image_alpha = 1;

	audio_play_sound(snd_sword, 10, false);
}

if(global.currentBlade == 2){
	image_alpha = 1;

	audio_play_sound(snd_spell, 15, false);
}
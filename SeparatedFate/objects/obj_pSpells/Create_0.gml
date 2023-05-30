damage = 0;

father = noone;



if(global.currentSpell == 0){
	sprite_index = spr_spell;
	audio_play_sound(snd_spell, 15, false);
}
if(global.currentSpell == 1){
	sprite_index = spr_fire;
}
if(global.currentSpell == 2){
	sprite_index = spr_holy;
}
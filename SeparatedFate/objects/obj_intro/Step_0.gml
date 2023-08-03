/// @description Insert description here

camera_set_view_pos(view_camera[0], xpos, 180);
xpos = max(xpos - 0.3, 0);

if(!fadeout){
	a = max(a - 0.005, 0.25);
}	
else{
	a = min(a + 0.005, 1);
}

l += 0.5;

var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);

print = string_copy(str, 1, l);
if((l > string_length(str) + 100) && next < array_length(strings) - 1){
	l = 0;
	next++;

	if(next == array_length(strings) - 9){
		xpos = 640
		layer_background_sprite(back_id, intro);			
	}
	if(next == array_length(strings) - 5){
		xpos = 640
		layer_background_sprite(back_id, Moon);		
	}
	if(next == array_length(strings) - 2){
		layer_background_sprite(back_id, intro);			
	}
	if(next == array_length(strings) - 1){
		layer_background_sprite(back_id, Moon);
		holdspace++;
	}
	
	holdspace++;
}
str = strings[next];


if((keyboard_check_direct(vk_space))||(gamepad_button_check(0, gp_face2))) holdspace++;

if((holdspace > 80) || (xpos < 100)){
	fadeout = 1;
}
if((a == 1) && (fadeout == 1)){	
	audio_sound_gain(msc_intro, 0, 500);
	audio_play_sound(msc_intro, 10, false);

	room_goto(rm_graveyard1);
	obj_player.x = 88;
	obj_player.y = 384;
}
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
if((l > string_length(str) + 100) && next < array_length_1d(strings) - 1){
	l = 0;
	next++;
	
	if(next == array_length_1d(strings) - 5){
		layer_background_sprite(back_id, Scene02);
		holdspace++;	
	}
	if(next == array_length_1d(strings) - 3){
		layer_background_sprite(back_id, Scene03);
		holdspace++;	
	}
}
str = strings[next];


if((keyboard_check_direct(vk_space))||(gamepad_button_check(0, gp_face2))) holdspace++;

if((holdspace > 80) || (xpos < 10)){
	fadeout = 1;
}
if((a == 1) && (fadeout == 1)){	
	audio_sound_gain(msc_scene01, 0, 500);
	audio_play_sound(msc_scene01, 1000, false);

	room_goto(rm_town);
	obj_player.x = 70;
	obj_player.y = 380;
}
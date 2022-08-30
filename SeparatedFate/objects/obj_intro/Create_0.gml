/// @description Insert description here

xpos = 640; //xposition of the camera
a = 1;		//alpha of black line
fadeout = 0;

str = "";
print = "";

l = 0;		//letters of string
next = 0;	

holdspace = 0;

strings[0] = "First line";
strings[1] = "Second line";
strings[2] = "Third line \nline of text";

audio_play_sound(msc_intro, 1000, true);
audio_sound_gain(msc_intro, 1, 0);
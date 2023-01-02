/// @description Insert description here

xpos = 640; //xposition of the camera
a = 1;		//alpha of black line
fadeout = 0;

str = "";
print = "";

l = 0;		//letters of string
next = 0;	

holdspace = 0;

strings[0] = "Depois de uma luta intensa contra aquele desconhecido\nIlkael morre...";
strings[1] = "....";
strings[2] = "Imediatamente um exercito de demonios\ncomecam a invadir a terra";


strings[3] = "Uma guerra se inicia";
strings[4] = "Guerreiros do mundo todo se deparam\ncom esse pressagio do mal";

strings[5] = "Apos um tempo Ilkael acorda numa taverna da cidade";
strings[6] = "do lado de fora da taverna\n ele se depara com o bardo";

audio_play_sound(msc_scene01, 1000, true);
audio_sound_gain(msc_scene01, 1, 0);
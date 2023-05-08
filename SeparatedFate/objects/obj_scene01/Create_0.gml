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
strings[2] = "Imediatamente um exercito de demonios\ncomeçam a invadir a terra";


strings[3] = "Uma guerra se inicia";
strings[4] = "Guerreiros do mundo todo se deparam\ncom esse presságio do mal";
strings[5] = "O Guerreiro Desconhecido libertou uma maldição sobre a terra\nUma maldição que fora selada há muito tempo";

strings[6] = "Após um tempo Ilkael acorda numa taverna da cidade\nconfuso sem saber como ainda está vivo";
strings[7] = "Ele se questiona quem era aquele guerreiro\n e porque havia resquícios da magia de Sylvir naquele local";

strings[8] = "Ele então se levanta, e vai tirar algumas informações \nna taverna onde está";

audio_play_sound(msc_scene01, 1000, true);
audio_sound_gain(msc_scene01, 1, 0);
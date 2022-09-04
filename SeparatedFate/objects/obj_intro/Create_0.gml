/// @description Insert description here

xpos = 640; //xposition of the camera
a = 1;		//alpha of black line
fadeout = 0;

str = "";
print = "";

l = 0;		//letters of string
next = 0;	

holdspace = 0;

strings[0] = "Em um tempo tão distante que ate mesmo os imortais\npoderiam esquecer de seus acontecimentos";
strings[1] = "havia um homem";
strings[2] = "seu nome era \nÍlkael";


strings[3] = "ele era um feiticeiro Imortal, unico entre sua especie";
strings[4] = "se apaixonou por Sylvir \numa mulher extremamente encantadora";
strings[5] = "Sylvir era uma humana e \nconsquistou o coracao de um imortal";


audio_play_sound(msc_intro, 1000, true);
audio_sound_gain(msc_intro, 1, 0);
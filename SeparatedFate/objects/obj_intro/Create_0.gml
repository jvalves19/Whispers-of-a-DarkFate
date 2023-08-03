/// @description Insert description here

xpos = 640; //xposition of the camera
a = 1;		//alpha of black line
fadeout = 0;

str = "";
print = "";

l = 0;		//letters of string
next = 0;	

holdspace = 0;

strings[0] = translateText("cutIntro0Ln1") + "\n" + translateText("cutIntro0Ln2");
strings[1] = translateText("cutIntro1");
strings[2] = translateText("cutIntro2Ln1") + "\n" + translateText("cutIntro2Ln2");


strings[3] = "Ele era um feiticeiro Imortal, único entre sua espécie";
strings[4] = "Ele se apaixonou por Sylvir \numa mulher extremamente encantadora";
strings[5] = "Sylvir era uma humana e \nconsquistou o coracao de um imortal";

strings[6] = "Para salvá-la da morte iminente\nKassius tenta um feitiço para torná-la imortal.";
strings[7] = "Após o feitiço, Kassius morre";

strings[8] = "....";

strings[9] = "Após um longo período de tempo\nKassius acorda fraco e imponente";
strings[10] = "Ele teve sua alma dividida em várias partes\ndurante a tentativa de salvar Sylvir";
strings[11] = "Agora, lhe resta tentar descobrir onde Sylvir está\nE o que aconteceu com seus poderes...";
strings[12] = "... com sua Aura";

audio_play_sound(msc_intro, 10, false);
audio_sound_gain(msc_intro, 1, 0);
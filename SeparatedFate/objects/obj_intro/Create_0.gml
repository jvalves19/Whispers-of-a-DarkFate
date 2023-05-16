/// @description Insert description here

xpos = 640; //xposition of the camera
a = 1;		//alpha of black line
fadeout = 0;

str = "";
print = "";

l = 0;		//letters of string
next = 0;	

holdspace = 0;

strings[0] = "Em um tempo tão distante que até mesmo os imortais\npoderiam esquecer de seus acontecimentos";
strings[1] = "Havia um homem";
strings[2] = "Seu nome era \nCassius";


strings[3] = "Ele era um feiticeiro Imortal, único entre sua espécie";
strings[4] = "Ele se apaixonou por Sylvir \numa mulher extremamente encantadora";
strings[5] = "Sylvir era uma humana e \nconsquistou o coracao de um imortal";

strings[6] = "Para salvá-la da morte iminente\nCassius tenta um feitiço para torná-la imortal.";
strings[7] = "Após o feitiço, Cassius morre";

strings[8] = "....";

strings[9] = "Após um tempo Cassius acorda fraco e imponente";
strings[10] = "Ele teve sua alma dividida em várias partes\ndurante a tentativa de salvar Sylvir";
strings[11] = "Agora, lhe resta tentar descobrir onde Sylvir está\nE o que aconteceu com seus poderes...";
strings[12] = "... com sua essência";

strings[13] = "...";
strings[14] = "Cassius encontra um rastro de magia de Sylvir.\ne acredita estar perto dela...";


audio_play_sound(msc_intro, 10, false);
audio_sound_gain(msc_intro, 1, 0);
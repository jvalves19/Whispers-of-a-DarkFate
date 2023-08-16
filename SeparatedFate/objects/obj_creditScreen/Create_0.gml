text = "Whispers of a Dark Fate\n\nProgramador\n-João Vitor Alves\n\nRoteiro\n-João Vitor Alves\n-Lucas Sousa Basilio\n-Guilherme Antônio\n\nMusicas\n-João Vitor Alves\n\nAgracimento\nAos Testers\n-Adam Teodoro\n\nAgradecimentos Especiais\n-NoNeClass\n-Shaun Spalding\n-Game Maker Rob\n-1up Indie\n-Hero's Legend Studio\n-Ponto e Vírgula\n\n(C) 2022 Woa Dark Fate Inc.";
scroll_speed = 1;

draw_set_font(fnt_menu2);
text_height = string_height(text);
x = room_width/2;
y = room_height;

audio_stop_sound(msc_DarkSoulsEpilogue);
audio_play_sound(msc_DarkSoulsEpilogue, 1, true);
audio_sound_gain(msc_DarkSoulsEpilogue, 1, 0);
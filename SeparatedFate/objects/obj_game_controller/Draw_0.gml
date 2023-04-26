/// @description Insert description here
// You can write your code in this editor

//Game Over Screen
if(game_over){
	draw_gameover_screen("Game Over", "ENTER ou X para Reiniciar");
}
else{
	value = 0;
}


if(bossDead){
	draw_gameover_screen("Great Beast \nObliterada", "\n\n\nENTER ou X para Continuar");
}

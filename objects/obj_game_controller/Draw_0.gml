/// @description Insert description here
// You can write your code in this editor

//Game Over Screen
if(game_over){
	draw_gameover_screen("Game Over", translateText("gameOverMsg"));
}
else{
	value = 0;
}


if(bossDead){
	draw_gameover_screen(translateText("greatBeast") + "\n" + translateText("greatBeastKilled"), "\n\n\n" + translateText("bossDeadMsh"));
}

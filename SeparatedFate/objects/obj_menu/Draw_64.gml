/// @description Insert description here
// You can write your code in this editor

//Drawing menu
var _qtd = array_length(menu);

for(var i = 0; i < _qtd; i++){
	var _text = menu[i];
	draw_text(20, 20 + i * 20, _text);
	
	
}
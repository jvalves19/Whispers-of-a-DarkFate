// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function saveGame(){
	ini_open("savedata.ini");
	
	ini_write_real("savegame", "roomID", global.actRoom);
	ini_write_real("savegame", "xPos", obj_player.x);
	ini_write_real("savegame", "yPos", obj_player.y);
	
	ini_close();
}

function loadGame(){
	var roomID;
	
	ini_open("savedata.ini");
	
	roomID = ini_read_real("savegame", "roomID", 0);
	obj_player.x  = ini_read_real("savegame", "xPos", 0);
	obj_player.y= ini_read_real("savegame", "yPos", 0);
	
	ini_close();
	room_goto(roomID);
}
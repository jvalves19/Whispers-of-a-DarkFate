/// @description Insert description here
// You can write your code in this editor

pause = false;
pauseSurf = 1;
pauseSurfBuffer = 1;

resW = 1920;
resH = 1080;

value = 0;

menu = ["Resume Story", "Main Menu", "End Game"];
sel = -1;

draw_menu = function(){
	create_menu();
}

select_menu = function(){
	change_option();
	
	//Resume Game
	if(sel == 0 && _option){
		if(pause){
			pause = false;
			instance_activate_all();
		
			if(surface_exists(pauseSurf)) surface_free(pauseSurf);
			if(buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);

		}
		else{		
			pause = true;
		
			instance_deactivate_all(true);
		
			pauseSurf = surface_create(resW, resH);
			surface_set_target(pauseSurf);
			draw_surface(application_surface, 0, 0);
			surface_reset_target();

			if(buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
			
			pauseSurfBuffer = buffer_create(resW * resH * 4, buffer_fixed, 1);
			buffer_get_surface(pauseSurfBuffer, pauseSurf, 0);		
		}
	}
	//Main Menu
	if(sel == 1 && _option) game_restart();
	
	//Exit Game
	if(sel == 2 && _option) game_end();
}
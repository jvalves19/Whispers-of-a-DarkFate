function cutscene_wait(_seconds){
	timer++;
	
	if(timer >= _seconds * room_speed){
		timer = 0;
		cutscene_end();
	}
}

function cutscene_end(){
	scene++;
	
	if(scene > array_length(scene_info) - 1){
		instance_destroy();
		exit;
	}
	
	event_perform(ev_other, ev_user0);
}

function cutscene_soundGain(_sound, _level, _time){
	audio_sound_gain(_sound, _level, _time);
	
	cutscene_end();
}

function cutscene_stopSound(_sound){
	audio_stop_sound(_sound);
	
	cutscene_end();
}

function cutscene_playSound(_sound, _priority, _loop){
	audio_play_sound(_sound, _priority, _loop);
	
	cutscene_end();
}

function cutscene_instance_create(_x, _y, _layerId, _obj){
	var inst = instance_create_layer(_x, _y, _layerId, _obj);
	
	cutscene_end();

	return inst;
}

function cutscene_instance_destroy(_obj){
	with(_obj){
		instance_destroy();
	}
	
	cutscene_end();
}

function cutscene_instance_destroy_nearest(_x, _y, _obj){
	var inst = instance_nearest(_x, _y, _obj);
	
	cutscene_instance_destroy(inst);
}

function cutscene_changeXscale(_obj, _imageXscale){
	var arg;
	var i = 0; repeat(argument_count){
		arg[i] = argument[i];
		i++;
	}
	
	if(argument_count > 1){
		with(_obj){
			image_xscale = _obj;
		}
	}
	else{
		with(_imageXscale){
			image_xscale = -image_xscale;
		}
	}
	
	cutscene_end();
}

function cutscene_changeVariable(_obj, _varNameString, _value){
	with(_obj){
		variable_instance_set(id, _varNameString, _value);
	}
	
	cutscene_end();
}

function cutscene_moveCharacter(_obj, _x, _y, _relative, _spd){
	var obj = _obj, relative = _relative, spd = _spd;
	
	if(x_destination == -1){
		if(!relative){
			x_destination = _x;
			y_destination = _y;
		}
		else {
			x_destination = obj.x + _x;
			y_destination = obj.y + _y;
		}
	}
	
	var xx = x_destination;
	var yy = y_destination;
	
	with(obj){
		sprite_index = sprWalk;
		
		if(point_distance(x, y, xx, yy) >= spd){
			var dir = point_direction(x, y, xx, yy);
			var lenDirX = lengthdir_x(spd, dir);
			var lenDirY = lengthdir_y(spd, dir);
			
			if(lenDirX != 0) image_xscale = sign(lenDirX);
			
			x += lenDirX;
			y += lenDirY;
		}
		else{
			sprite_index = sprIdle;
			x = xx;
			y = yy;
			
			with(other){
				x_destination = -1;
				y_destination = -1;
				
				cutscene_end();
			}
		}
	}
}

function create_cutscene(_scene_info){
	var inst = instance_create_layer(0, 0, "Instances", obj_cutscene);
	
	
	with(inst){
		scene_info = _scene_info
		event_perform(ev_other, ev_user0)
	}	
}

function script_execute_alt(_s, _a){
	var s = _s;
	var a = _a;
	var len = array_length(_a);
	
	switch(len){
		case 0 : script_execute(s); break;
	    case 1 : script_execute(s, a[0]); break;
	    case 2:  script_execute(s, a[0], a[1]); break;
	    case 3:  script_execute(s, a[0], a[1], a[2]); break;
	    case 4:  script_execute(s, a[0], a[1], a[2], a[3]); break;
	    case 5:  script_execute(s, a[0], a[1], a[2], a[3], a[4]); break;
	    case 6:  script_execute(s, a[0], a[1], a[2], a[3], a[4], a[5]); break;
	    case 7:  script_execute(s, a[0], a[1], a[2], a[3], a[4], a[5], a[6]); break;
	    case 8:  script_execute(s, a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7]); break;
	    case 9:  script_execute(s, a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8]); break;
	    case 10: script_execute(s, a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8], a[9]); break;
	    case 11: script_execute(s, a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8], a[9], a[10]); break;
	    case 12: script_execute(s, a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8], a[9], a[10], a[11]); break;
	    case 13: script_execute(s, a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8], a[9], a[10], a[11], a[12]); break;
	    case 14: script_execute(s, a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8], a[9], a[10], a[11], a[12], a[13]); break;
	    case 15: script_execute(s, a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8], a[9], a[10], a[11], a[12], a[13], a[14]); break;
	}
}
	
function begin_cutscene(){

	

}
/// @description Insert description here
// You can write your code in this editor

//Movement and Collision

var _vSpd = sign(vSpd);
var _hSpd = sign(hSpd);

repeat(abs(hSpd)){
	if(place_meeting(x + _hSpd, y, obj_block)){
		hSpd = 0;
		break;
	}
	else{
		x += _hSpd;
	}
}

repeat(abs(vSpd)){
	if(place_meeting(x, y + _vSpd, obj_block)){
		vSpd = 0;
		break;
	}
	else{
		y += _vSpd;
	}
}
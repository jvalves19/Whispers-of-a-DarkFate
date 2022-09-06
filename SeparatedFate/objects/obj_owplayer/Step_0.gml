depth = -y/100;	

var right = keyboard_check(ord("D"));
var left = keyboard_check(ord("A"));
var down = keyboard_check(ord("S"));
var up = keyboard_check(ord("W"));

hSpd = (right-left) * spd;  
vSpd = (down-up) * spd;

if(place_meeting(x + hSpd, y, obj_block)){
	while(!place_meeting(x + sign(hSpd), y, obj_block)){
		x += sign(hSpd);
	}
	hSpd = 0;
}
x += hSpd;


if(place_meeting(x, y + vSpd, obj_block)){
	while(!place_meeting(x, y + sign(vSpd), obj_block)){
		y += sign(vSpd);
	}
	vSpd = 0;
}
y += vSpd;

image_speed = 0.5;
if(hSpd==0 && vSpd==0){
	image_speed = 0;
	image_index = 0;
	
}

//look to the right side
if(hSpd > 0)		sprite_index = spr_owPlayerRight;
else if(hSpd < 0)	sprite_index = spr_owPlayerLeft;

if(vSpd > 0)		sprite_index = spr_owPlayerDown;
else if(vSpd < 0)	sprite_index = spr_owPlayerUp;
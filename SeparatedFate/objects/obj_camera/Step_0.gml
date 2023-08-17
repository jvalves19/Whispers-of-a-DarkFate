 /// @description Insert description here
// You can write your code in this editor

if(target == noone) exit;

halfViewW = camera_get_view_height(view_camera[0]) / 2;
halfViewH = camera_get_view_height(view_camera[0]) / 1.5;

camera_set_view_pos(view_camera[0], x - halfViewW, y - halfViewH);

//following the target
x = lerp(x, target.x, 0.5);
y = lerp(y, target.y, 0.5);
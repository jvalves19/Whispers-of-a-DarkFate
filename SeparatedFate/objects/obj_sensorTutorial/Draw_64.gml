var camera_id = view_camera[0];
		
var w = camera_get_view_width(camera_id);
		
var y1 = camera_get_view_y(camera_id);
var h = camera_get_view_height(camera_id);
var center_h = y1 + h/2;
		
		
if(sense){	
	draw_sprite_stretched(spr_gameKeys, 0, w + 220, h/center_h + 150, 1000, 600);
}
healthbar_width = 720;
healthbar_height = 64;
healthbar_x = (400/2) - (healthbar_width/4);
healthbar_y = ystart - 350;

var camera_id = view_camera[0];

var x1 = camera_get_view_x(camera_id);
var w = camera_get_view_width(camera_id);
var center_w = x1 + w/2;
		
var y1 = camera_get_view_y(camera_id);
var h = camera_get_view_height(camera_id);
var center_h = y1 + h/2;


draw_sprite_stretched(spr_artGUI, 0, w/center_w + 10, h/center_h + 10, 145, 145);
draw_sprite_stretched(spr_art, 0, w/center_w + 15, h/center_h + 15, 140, 140);
	
draw_sprite(spr_healthBg, 0, w - 220, h/center_h + 10);
draw_sprite_stretched(spr_health, 0, w - 220, h/center_h + 10, 
(life/global.pMaxLife) * healthbar_width, healthbar_height);

draw_sprite(spr_healthBg, 0, w - 220, h/center_h + 60);
draw_sprite_stretched(spr_aura, 0, w - 220, h/center_h + 60, 
(aura/global.pMaxAura ) * healthbar_width, healthbar_height);
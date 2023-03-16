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

//Player SplashArt
draw_sprite_stretched(spr_artGUI, 0, w/center_w + 10, h/center_h + 10, 145, 145);
draw_sprite_stretched(spr_art, 0, w/center_w + 25, h/center_h + 15, 120, 120);
draw_sprite_stretched(spr_spellBox, 0, w/center_w + 20, h/center_h + 150, 125, 125);

#region SPELL & ULTIMATE BOX
draw_sprite_stretched(global.spell, 0, w/center_w + 20, h/center_h + 150, 125, 125);
draw_sprite_stretched(global.power, 0, w/center_w + 20, h/center_h + 150, 125, 125);
#endregion

//Player HealthBar
draw_sprite(spr_healthBg, 0, w - 220, h/center_h + 10);
draw_sprite_stretched(spr_health, 0, w - 220, h/center_h + 10, 
(life/global.pMaxLife) * healthbar_width, healthbar_height);
//Player AuraBar
draw_sprite(spr_healthBg, 0, w - 220, h/center_h + 60);
draw_sprite_stretched(spr_aura, 0, w - 220, h/center_h + 60, 
(aura/global.pMaxAura ) * healthbar_width, healthbar_height);
healthbar_width = 720;
healthbar_height = 30;
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
draw_sprite_stretched(spr_vBckg, 0, w - 250, h/center_h + 10, healthbar_width+35, healthbar_height + 30);
draw_sprite_stretched(spr_vida, 0, w - 230, h/center_h + 30, 
(life/global.pMaxLife) * healthbar_width, healthbar_height - 10);
//Player AuraBar
draw_sprite_stretched(spr_mBckg, 0, w - 240, h/center_h + 80, healthbar_width+20, healthbar_height + 20);
draw_sprite_stretched(spr_mana, 0, w - 220, h/center_h + 100, 
(aura/global.pMaxAura ) * healthbar_width-10, healthbar_height - 20);
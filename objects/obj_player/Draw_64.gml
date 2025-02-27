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

#region PLAYER HUD
//Player HealthBar
draw_sprite_stretched(spr_vBckg, 0, w - 300, h/center_h + 10, healthbar_width+35, healthbar_height + 30);
draw_sprite_stretched(spr_vida, 0, w - 280, h/center_h + 30, 
(life/global.pMaxLife) * healthbar_width, healthbar_height - 10);

//Player AuraBar
draw_sprite_stretched(spr_mBckg, 0, w - 290, h/center_h + 80, healthbar_width+20, healthbar_height + 20);
draw_sprite_stretched(spr_mana, 0, w - 270, h/center_h + 100, 
(aura/global.pMaxAura ) * healthbar_width-10, healthbar_height - 20);

//Player SplashArt
draw_sprite_stretched(spr_pArtGUI, 0, w/center_w + 10, h/center_h + 10, 145, 145);
draw_sprite_stretched(spr_pArt, 0, w/center_w + 25, h/center_h + 30, 120, 100);
draw_sprite_stretched(spr_spellBox10, 0, w/center_w - 15, h/center_h + 130, 200, 125);

//SPELL e ULTIMATE
draw_sprite_stretched(spr_hudSpell, global.currentSpell+1, w/center_w + 15, h/center_h + 145, 125, 125);
draw_sprite_stretched(spr_hudPower, global.currentUltimate+1, w/center_w + 30, h/center_h + 145, 125, 125);

if(!canUltimate){
	draw_sprite_stretched(spr_disablePower, 0, w/center_w + 30, h/center_h + 145, 125, 125);
	define_align_font(-1, -1, -1);
	draw_text(w/center_w + 100, h/center_h + 160, string_format((time_ultimate/100), 0, 0));
	define_align_font(-1, -1, -1);
}

if(!canSpell){
	draw_sprite_stretched(spr_disablePower, 0, w/center_w - 35, h/center_h + 145, 125, 125);
	define_align_font(-1, -1, -1);
	draw_text(w/center_w + 30, h/center_h + 160, string_format((time_spell/100), 0, 0));
	define_align_font(-1, -1, -1);
}
#endregion

#region ITEM
startInvX = sprite_get_width(spr_items);
startInvY = room_height + (sprite_get_height(spr_items) * 9); 

itemX = startInvX;
itemY = startInvY;

draw_sprite(spr_inventoryItem, 0, itemX + 1750, itemY/h);
draw_sprite(spr_selected_item, 0, itemX + 1745, itemY/h);
draw_sprite(spr_items, global.currentItem+1, itemX + 1766, (itemY/h) + 10);

define_align_font(fa_right, fa_bottom, -1);
draw_set_color(c_white);	


draw_text(itemX + 1750 + (sprite_get_width(spr_items) / 2), itemY/h + (sprite_get_height(spr_items) / 2), "x" + string(quantity));
#endregion

draw_text(w - 240, h/center_h + 120, global.playerXP);
draw_text(w - 240, h/center_h + 240, global.playerLevel);
draw_text(w - 240, h/center_h + 360, global.playerGold);
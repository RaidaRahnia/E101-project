var _dx = 0
var _dy = gui_h * 0.8;
var _boxw = gui_w;
var _boxh = gui_h - _dy;

draw_sprite_stretched(spr_box, 0, _dx, _dy, _boxw, _boxh);

_dy += 16;
_dx += 16;
//var myFont = font_add("PeaberryMono.ttf", 30, false, false, 32, 128);
var myFont = font_dialog
draw_set_font(myFont);
//draw_text(100, 100, "TESTING FONT");

//draw_set_font(myFont);

var _name = messages[current_message].name;
draw_set_color(global.char_colors[$ _name]);
draw_text(_dx, _dy, _name);
draw_set_color(c_white);
_dy += 40;

draw_text_ext(_dx, _dy, draw_message, -1, _boxw - _dx * 2);


// Dimensions and position
var w = 800;
var h = 800;
var x1 = (display_get_gui_width() - w) / 2;
var y1 = (display_get_gui_height() - h) / 2;

draw_set_alpha(0.9);
draw_set_color(make_color_rgb(102, 204, 255)); // Bright ocean blue
draw_roundrect(x1, y1, x1 + w, y1 + h, false); // Rounded edges

draw_set_alpha(1);
draw_set_color(c_white);
draw_roundrect(x1, y1, x1 + w, y1 + h, true);

// Center-aligned text settings
draw_set_halign(fa_center);
draw_set_valign(fa_middle);


// Use custom font if you have one
// draw_set_font(fnt_ui_cartoon); // optional

var center_x = x1 + w / 2;
var center_y = y1 + h / 2;
var line_spacing = 60;

draw_text(center_x, center_y - line_spacing / 2, info_text);


draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_alpha(1);
//draw_set_font(-1); // Resets to default font
draw_set_color(c_white); // Resets color just in case

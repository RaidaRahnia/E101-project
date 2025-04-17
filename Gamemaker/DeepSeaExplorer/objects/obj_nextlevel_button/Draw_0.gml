draw_set_font(Font6_1);

// 1) Draw the teal rectangle centered on (x, y).
var half_w = 100; // half of 200
var half_h = 25;  // half of 50

draw_set_color(c_teal);
draw_rectangle(x - half_w, y - half_h, x + half_w, y + half_h, false);

// 2) Draw the text in the center of that rectangle.
draw_set_color(c_white);
//draw_set_font(Font6_1);  // or whichever valid font you want to use

if global.current_level == 5 {
	button_text = "Game Complete!";	
}

// Measure the text
var text_w = string_width(button_text);
var text_h = string_height(button_text);

// Compute top-left for centered text
var text_x = x - (text_w * 0.5);
var text_y = y - (text_h * 0.5);

// Draw the text
draw_text(floor(text_x), floor(text_y), button_text);
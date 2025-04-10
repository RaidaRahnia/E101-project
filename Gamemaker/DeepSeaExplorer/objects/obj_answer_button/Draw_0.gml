// Draw the button background
var half_width = box_width / 2;
var half_height = box_height / 2;

if (hover) {
    draw_set_color(c_yellow);  // Hover color
} else {
    draw_set_color(c_white);   // Normal button color
}

// Draw the rounded button
draw_roundrect(x - half_width, y - half_height, x + half_width, y + half_height, false);

// Draw the answer text inside the button, with wrapping
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Wrap the answer text properly inside the button box
draw_text_ext(x, y, answer_text, box_width - 20, 16);  // 16 is the font size, adjust it based on the text
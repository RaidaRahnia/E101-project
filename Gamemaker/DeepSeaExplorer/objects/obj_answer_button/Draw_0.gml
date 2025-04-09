// Set up box dimensions (could also use the instance variables box_width and box_height)
var half_width = box_width / 2;
var half_height = box_height / 2;

// Draw button background
if (hover) {
    draw_set_color(c_yellow);  // Change color on hover
} else {
    draw_set_color(c_white);
}

// Draw a rounded rectangle (the last argument is the rounding radius; adjust as needed)
draw_roundrect(x - half_width, y - half_height, x + half_width, y + half_height, false);

// Draw border if desired (optional)
// draw_set_color(c_black);
// draw_roundrect(x - half_width, y - half_height, x + half_width, y + half_height, 10, true);

// Draw the answer text
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
// Use draw_text_ext to ensure text wraps neatly inside the box. The wrap width here is slightly less than the box width.
draw_text_ext(x, y, answer_text, box_width - 20, 16);

// Reset alignment
draw_set_halign(fa_left);
draw_set_valign(fa_top);
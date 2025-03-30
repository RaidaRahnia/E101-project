// Set the size and position of the textbox
var box_width = 400; // Adjust width as needed
var box_height = 200; // Adjust height as needed
var box_x = (display_get_width() - box_width) / 2;
var box_y = (display_get_height() - box_height)/ 4;
var max_width = 250; // Set max width for text wrapping

// Set the color and draw the textbox background
draw_set_color(c_white);
draw_rectangle(box_x, box_y, box_x + box_width, box_y + box_height, false);

// Set the color and draw the textbox border
draw_set_color(c_black);
draw_rectangle(box_x, box_y, box_x + box_width, box_y + box_height, true);

// Draw the wrapped message inside the textbox
draw_set_font(font_default);
draw_set_color(c_black);
draw_text(box_x + 10, box_y + 10, message); // Adjust position as needed
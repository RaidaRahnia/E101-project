// obj_quiz_button: Draw Event
var myFont = font_add("PeaberryMono.ttf", 20, false, false, 32, 128);
draw_set_font(myFont);

// Define the rectangle dimensions (adjust as needed)
var rect_x = x;
var rect_y = y;
var box_width = 400;
var box_height = 50;

// Set fill color based on quiz state from the manager reference.
if (manager != noone) {
    if (manager.quiz_state == "feedback") {
        // Highlight the correct answer in green,
        // and show the incorrect (selected) answer in red.
        if (btn_index == manager.quiz_data[manager.current_question][2]) {
            draw_set_color(c_green);
        } else if (btn_index == manager.selected_answer) {
            draw_set_color(c_red);
        } else {
            draw_set_color(c_white);
        }
    } else {
        // Default appearance for "waiting" mode.
        draw_set_color(c_white);
    }
} else {
    draw_set_color(c_white);
}

// Draw the rectangle for the button.
draw_rectangle(rect_x, rect_y, rect_x + box_width, rect_y + box_height, false);

// Draw the button text inside the rectangle.
draw_set_color(c_black);
draw_text(rect_x + 10, rect_y + 15, button_text);
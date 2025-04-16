// obj_quiz_button: Mouse Left Pressed Event

// Ensure we have a valid reference to the manager, then pass our button index.
if (manager != noone) {
    manager.quiz_answer_selected(btn_index);
}

// obj_quiz_button: Mouse Left Pressed Event
var rect_x = x;
var rect_y = y;
var box_width = 400;
var box_height = 50;

// Get mouse position in room coordinates.
var mx = mouse_x;
var my = mouse_y;

if (mx >= rect_x && mx <= rect_x + box_width && my >= rect_y && my <= rect_y + box_height) {
    if (manager != noone) {
        manager.quiz_answer_selected(btn_index);
    }
}
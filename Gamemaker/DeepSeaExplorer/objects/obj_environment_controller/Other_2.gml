display_set_gui_maximize(); // Ensures the GUI scales properly

window_set_size(display_get_width(), display_get_height());
// Example: Persistent controller's Create Event
var displayW = display_get_width();
var displayH = display_get_height();
var windowW = window_get_width();
var windowH = window_get_height();

// Calculate the position so the window is centered.
var new_x = (displayW - windowW) / 2;
var new_y = (displayH - windowH) / 2;

// Set the window's position.
window_set_position(new_x, new_y);


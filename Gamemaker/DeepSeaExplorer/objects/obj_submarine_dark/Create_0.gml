display_set_gui_maximize(); // Ensures the GUI scales properly

window_set_size(display_get_width(), display_get_height());

if keyboard_check_pressed(vk_f11) {
    window_set_fullscreen(!window_get_fullscreen());
}
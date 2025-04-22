// Inherit the parent event
show_debug_message("Help play button pressed");

event_inherited();

global.coming_from_main_menu = false;


if (variable_global_exists("coming_from_pause") && global.coming_from_pause) {
    global.coming_from_pause = false;
    global.is_paused = true;
    //global.current_level -= 1;
    
    if (variable_global_exists("previous_room")) {
        room_goto(global.previous_room);
    } else {
        show_debug_message("⚠️ No previous_room set — defaulting to rm_level1");
        room_goto(rm_level1);
    }
}
else if (variable_global_exists("coming_from_main_menu") && global.coming_from_main_menu) {
    global.coming_from_main_menu = false;

    if (!variable_global_exists("current_level")) {
        global.current_level = 1;
    }

    global.skip_level_increment = true;
    room_goto(rm_level1);
}
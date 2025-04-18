// Inherit the parent event
show_debug_message("Play button pressed");

event_inherited();

if (variable_global_exists("coming_from_pause") && global.coming_from_pause) {
    // Case: Came from pause menu
    global.coming_from_pause = false;
    global.is_paused = true;
    global.current_level -= 1;
    room_goto(global.previous_room);
    //global.current_level -= 1;
} else {
    // Case: Came from main menu or first time play
    global.is_paused = false;
    room_goto(rm_level1); // Change this to your actual first level room
    // Start game if it's from Main Menu
}

    





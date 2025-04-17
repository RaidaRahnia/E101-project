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
    audio_play_sound(Wind_Chimes,0,false);
    audio_play_sound(Underwater_Exploration_Godmode,0,true,1,10.35);
    audio_stop_sound(Water_Lapping_Wind_342); // Start game if it's from Main Menu
}

    





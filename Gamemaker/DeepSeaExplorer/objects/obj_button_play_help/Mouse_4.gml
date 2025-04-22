// Safety guards
if (!variable_global_exists("coming_from_pause")) global.coming_from_pause = false;
if (!variable_global_exists("coming_from_main_menu")) global.coming_from_main_menu = false;
if (!variable_global_exists("previous_room")) global.previous_room = noone;

// ✅ CASE 1: Coming from Pause Menu
if (global.coming_from_pause 
    && !global.coming_from_main_menu 
    && variable_global_exists("return_to_room") 
    && global.return_to_room != noone) {

    show_debug_message("🔁 Resuming to actual gameplay room...");
    global.coming_from_pause = false;
    global.is_paused = true;
    global.current_level -= 1;

    room_goto(global.return_to_room); // ✅ this is now the correct level!
}

// ✅ CASE 2: Coming from Main Menu (Fresh start)
else {
    show_debug_message("🎮 Starting new game from Help...");
    global.coming_from_main_menu = false;
    global.is_paused = false;

    if (!variable_global_exists("current_level")) {
        global.current_level = 1;
    }

    global.skip_level_increment = true;
    room_goto(rm_level1);
}
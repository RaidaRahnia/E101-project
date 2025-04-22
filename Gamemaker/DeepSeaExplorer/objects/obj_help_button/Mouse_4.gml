// In the Pause menu Help button
global.return_to_room = global.previous_room; // Store real gameplay room
global.previous_room = rm_pause_menu;
global.coming_from_pause = true;
global.coming_from_main_menu = false;
room_goto(rm_help);
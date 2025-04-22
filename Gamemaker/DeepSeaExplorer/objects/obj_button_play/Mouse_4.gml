// Inherit the parent event
show_debug_message("Play button pressed");

global.current_level = 1;
global.retrying_quiz = false;
global.skip_level_increment = false;
global.coming_from_pause = false;
event_inherited();
global.coming_from_main_menu = true;
room_goto_next();




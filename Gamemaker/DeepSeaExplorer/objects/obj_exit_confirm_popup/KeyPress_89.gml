// YES - exit to main menu
global.is_paused = false;
global.current_level = 0;
global.previous_room = noone;
global.coming_from_pause = false;
audio_stop_all();
room_goto(rm_menu); // Replace with your actual menu room


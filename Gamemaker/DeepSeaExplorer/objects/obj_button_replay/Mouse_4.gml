// Reset all important game state
global.is_paused = false;
global.current_level = 0;
global.previous_room = noone;
global.coming_from_pause = false;
// Reset anything else you track — like score, health, inventory, etc.

// Send player back to level 1 or your intro scene
room_goto(rm_menu); // Change this to your actual first level room
audio_stop_all()
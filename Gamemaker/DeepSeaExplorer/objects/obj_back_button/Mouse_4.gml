global.previous_room = room;
global.is_paused = true;
global.coming_from_pause = true;

//instance_deactivate_all(true); 
room_goto(rm_pause_menu); // Your pause/help/resume room
    

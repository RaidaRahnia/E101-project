// On click:
if (variable_global_exists("previous_room")) {
    global.is_paused = false;
    //global.current_level -= 1;
    global.coming_from_pause = true;
	//instance_activate_all();
    room_goto(global.previous_room);
}
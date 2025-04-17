// On click:
if (variable_global_exists("previous_room")) {
    global.is_paused = false;
    global.current_level -= 1;
    room_goto(global.previous_room);
}
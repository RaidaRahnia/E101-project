// Inherit the parent event
show_debug_message("Play button pressed");

event_inherited();

room_goto(rm_level1);

audio_play_sound(Dolphin_esque_Godmode,0,true);
// Inherit the parent event
show_debug_message("Play button pressed");

event_inherited();

room_goto_next();

audio_play_sound(Wind_Chimes,0,false);
audio_play_sound(Underwater_Exploration_Godmode,0,true,1,10.35);
audio_stop_sound(Water_Lapping_Wind_342);
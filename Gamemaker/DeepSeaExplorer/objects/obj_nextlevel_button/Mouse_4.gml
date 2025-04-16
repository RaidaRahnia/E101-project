instance_destroy(obj_nextlevel_button);
obj_quiz_manager.quiz_state = "feedback";
room_goto(rm_level2);  // Make sure rm_level2 is your next level room name.
audio_play_sound(On_the_Island_Godmode,0,true);
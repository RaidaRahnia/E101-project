/// Retry Button: Mouse Left Pressed

if (instance_exists(obj_quiz_manager)) {
    with (obj_quiz_manager) {
        reset_quiz();
    
	if room=rm_level1 {
		audio_play_sound(Sigma_Slide_The_Soundlings,0,true,0.4)
	}
	if room=rm_level2 {
		audio_play_sound(Spring_Field_Godmode,0,true,0.4)
	}
	if room=rm_level3 {
		audio_play_sound(Sleep_Music_No_1_Chris_Haugen,0,true)
	}
	if room=rm_level4 {
		audio_play_sound(Wehrmut_Godmode,0,true,0.9)
	}
	}
}

if (instance_exists(obj_keep_exploring_button)) {
    with (obj_keep_exploring_button) instance_destroy();
}

// Destroy this retry button after pressing
instance_destroy();

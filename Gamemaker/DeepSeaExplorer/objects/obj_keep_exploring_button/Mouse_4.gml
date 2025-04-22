/// Keep Exploring Button: Mouse Left Pressed

// Destroy the quiz manager if it exists
global.current_level -= 1;
if (instance_exists(obj_quiz_manager)) {
    with (obj_quiz_manager) instance_destroy();
}


//instance_create_layer(0, 608, "Instances", obj_treasure_box);

// 2) Reset the existing chest (no destroy/recreate needed)
var chestIns = instance_find(obj_treasure_box, 0);
if (chestIns != noone) {
    chestIns.can_trigger_quiz = true;
    chestIns.interactable     = false;
    if (variable_instance_exists(chestIns, "interaction") && instance_exists(chestIns.interaction)) {
        instance_destroy(chestIns.interaction);
        chestIns.interaction = noone;
    }

if room=rm_level1 {
		audio_play_sound(Treasure_Hunt_Jeremy_Korpas,0,true,0.4)
	}
	if room=rm_level2 {
		audio_play_sound(Underwater_Exploration_Godmode,0,true,0.5)
	}
	if room=rm_level3 {
		audio_play_sound(On_the_Island_Godmode,0,true)
	}
	if room=rm_level4 {
		audio_play_sound(Dolphin_esque_Godmode,0,true,0.5)
	}

}


// Clean up any buttons still on screen
if (instance_exists(obj_retry_button)) {
    with (obj_retry_button) instance_destroy();
}

instance_destroy();

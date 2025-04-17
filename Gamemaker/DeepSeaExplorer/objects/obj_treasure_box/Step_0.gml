// obj_chest: Step Event

// Make sure the submarine instance exists.
if (instance_exists(obj_submarine)) {
    // Define a threshold distance (adjust as needed; here 100 pixels is an example).
    var threshold = 50;
    var dist = distance_to_object(obj_submarine);
    
    // If the submarine is within the threshold:
    if (dist < threshold && can_trigger_quiz) {
        interactable = true;
        
        // Create the icon if it doesn't exist.
        if (!instance_exists(interaction)) {
            interaction = instance_create_layer(x + 20, y - 10, layer, obj_interaction_icon);
        }
    } else {
        // If the submarine is not nearby, disable interaction and remove the icon.
        interactable = false;
        if (instance_exists(interaction)) {
            instance_destroy(interaction);
        }
    }
	

if (interactable && keyboard_check_pressed(vk_space)) {
    // Trigger the quiz:
    var quiz_manager = instance_find(obj_quiz_manager, 0);
    if (quiz_manager != noone && !quiz_manager.quiz_active) {
        quiz_manager.start_quiz();
    } else if (quiz_manager == noone) {
        show_debug_message("Error: obj_quiz_manager not found!");
    }
    // Clean up: remove the icon and disable further interactions.
    if (instance_exists(interaction)) {
        instance_destroy(interaction);
    }
    can_trigger_quiz = false;
    instance_destroy(); // Destroy the chest.
}
}

else if (instance_exists(obj_submarine_dark)) {
    // Define a threshold distance (adjust as needed; here 100 pixels is an example).
    var threshold = 50;
    var dist = distance_to_object(obj_submarine_dark);
    
    // If the submarine is within the threshold:
    if (dist < threshold && can_trigger_quiz) {
        interactable = true;
        
        // Create the icon if it doesn't exist.
        if (!instance_exists(interaction)) {
            interaction = instance_create_layer(x + 20, y - 10, layer, obj_interaction_icon);
        }
    } else {
        // If the submarine is not nearby, disable interaction and remove the icon.
        interactable = false;
        if (instance_exists(interaction)) {
            instance_destroy(interaction);
        }
    }
	

if (interactable && keyboard_check_pressed(vk_space)) {
    // Trigger the quiz:
    var quiz_manager = instance_find(obj_quiz_manager, 0);
    if (quiz_manager != noone && !quiz_manager.quiz_active) {
        quiz_manager.start_quiz();
    } else if (quiz_manager == noone) {
        show_debug_message("Error: obj_quiz_manager not found!");
    }
    // Clean up: remove the icon and disable further interactions.
    if (instance_exists(interaction)) {
        instance_destroy(interaction);
    }
    can_trigger_quiz = false;
    instance_destroy(); // Destroy the chest.
}
}
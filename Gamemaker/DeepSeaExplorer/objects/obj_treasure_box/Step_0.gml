// obj_chest: Step Event

if (interactable) {
    // Check if the player presses space.
    if (keyboard_check_pressed(vk_space)) {
        // Find the quiz manager instance.
        var quiz_manager = instance_find(obj_quiz_manager, 0);
        if (quiz_manager != noone && !quiz_manager.quiz_active) {
            quiz_manager.start_quiz();
        } else if (quiz_manager == noone) {
            show_debug_message("Error: obj_quiz_manager not found!");
        }
        
        // Remove the interaction icon if it exists.
        if (instance_exists(interaction)) {
            instance_destroy(interaction);
        }
        
        // Prevent further interactions and destroy the chest.
        can_trigger_quiz = false;
        instance_destroy();
    }
}
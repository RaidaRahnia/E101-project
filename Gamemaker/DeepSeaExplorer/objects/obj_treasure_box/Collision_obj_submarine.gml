if (other.id == obj_player.id && can_trigger_quiz) {
    // Find the quiz manager
    var quiz_manager = instance_find(obj_quiz_manager, 0);
    if (quiz_manager != noone && !quiz_manager.quiz_active) {
        quiz_manager.start_quiz();
        instance_destroy(); // Destroy the treasure box after opening
        can_trigger_quiz = false; // Prevent triggering again
    } else if (quiz_manager == noone) {
        show_debug_message("Error: obj_quiz_manager not found!");
    }
}
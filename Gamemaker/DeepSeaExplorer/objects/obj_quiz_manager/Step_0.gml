// obj_quiz_manager: Step Event

// Existing code for handling feedback and question transition:
if (quiz_state == "feedback") {
    feedback_timer--;
    if (feedback_timer <= 0) {
        current_question++;
        selected_answer = -1;
        if (current_question < array_length(quiz_data)) {
            quiz_state = "waiting";
            // Update answer button texts for the next question.
            for (var i = 0; i < array_length(answer_buttons); i++){
                answer_buttons[i].button_text = quiz_data[current_question][1][i];
            }
        } else {
            // If we've run out of questions, mark quiz as finished.
            quiz_state = "finished";
            // Optionally, you can destroy answer buttons:
            for (var i = 0; i < array_length(answer_buttons); i++){
                instance_destroy(answer_buttons[i]);
            }
            answer_buttons = [];  
        }
    }
}

/* Transition to level 2 after a delay if the quiz is finished.
if (quiz_state == "finished") {
    // Start the timer if it hasn’t already been started.
    if (level_transition_timer < 0) {
        level_transition_timer = room_speed * 3; // 3 seconds delay
    } else {
        level_transition_timer--;
        if (level_transition_timer <= 0) {
            // Check if the score is high enough.
            if (score >= requiredScore) {
                show_debug_message("Score high enough! Proceeding to level 2");
                room_goto(rm_level2);  // Replace 'rm_level2' with the exact room name for level 2.
            } else {
				room_restart();
                show_debug_message("Score not high enough to advance");
                // Optionally, you can restart the quiz or go to a different room.
                // For example, to restart the current quiz:
                // room_restart();
                // Or send them to a 'retry' room:
                // room_goto(rm_retry);
            }
        }
    }
} */

// Check if quiz is finished and the score meets the threshold.
if (quiz_state == "finished") {
    
    // Only create the buttons once, so check if they're already created.
    if (!instance_exists(obj_nextlevel_button) && score >= requiredScore) {
        // Create buttons near the center of the screen.
        var nextlevel_btn = instance_create_layer(room_width * 0.5, 
                                                  room_height * 0.5, 
                                                  "UI", 
                                                  obj_nextlevel_button);
        // Optionally store the instance id in a variable if you need to reference it.
    }
    
    // Optionally, if the score doesn't meet threshold, create a retry button.
    if (!instance_exists(obj_retry_button) && score < requiredScore) {
        var retry_btn = instance_create_layer(room_width * 0.5, 
                                              room_height * 0.5, 
                                              "UI", 
                                              obj_retry_button);
    }
}
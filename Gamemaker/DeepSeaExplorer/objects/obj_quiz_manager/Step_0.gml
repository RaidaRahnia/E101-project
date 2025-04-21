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

// Check if quiz is finished and the score meets the threshold.
if (quiz_state == "finished") {
    
    //instance_create_layer(10, 10, "Instances", obj_back_button);
    var btn = instance_create_layer(10, 10, "Instances", obj_back_button);
    btn.image_xscale = 0.03; // 50% width
    btn.image_yscale = 0.03; // 50% height

    
    // Only create the buttons once, so check if they're already created.
    if (!instance_exists(obj_nextlevel_button) && score >= requiredScore) {
		audio_stop_all()
		audio_play_sound(Magic_Chime,0,false,2,1)
        // Create buttons near the center of the screen.
			
		if (global.current_level == 6) {
			room_goto_next();
		}
		
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
											  audio_stop_all();
											  audio_play_sound(Battle_Crowd_Celebrate_Stutter,0,false,1,18);
        
        var explore_btn = instance_create_layer(room_width * 0.5, room_height * 0.5 + 100, "UI", obj_keep_exploring_button);
											  
    }
    
    

}
// obj_score_display: Draw GUI Event

var mgr = instance_find(obj_quiz_manager, 0);
if (mgr != noone) {
    // Check if the quiz is active and draw accordingly
    if (mgr.quiz_active) {
        // Draw the quiz title at a fixed position:
        draw_set_color(c_white);
        draw_text(70, 30, "Deep Sea Explorer Quiz");

        // Get the current question text
        if (mgr.current_question < array_length(mgr.quiz_data)) {
            var question_text = mgr.quiz_data[mgr.current_question][0];
            var center_x = (display_get_gui_width() - string_width(question_text)) / 2;
            draw_text(center_x, 70, question_text);
        } else {
            // Quiz finished – draw final message
            draw_text(70, 70, "Quiz Complete!");
        }
        
        // Draw the final score if the quiz has finished.
        if (mgr.quiz_state == "finished" || mgr.current_question >= array_length(mgr.quiz_data)) {
		        draw_text(70, 100, "Final Score: " + string(score) + " / " + string(array_length(mgr.quiz_data)));
		    }
        }
    }
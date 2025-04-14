// obj_score_display: Draw GUI Event

var mgr = instance_find(obj_quiz_manager, 0);
if (mgr != noone) {
    // Check if the quiz is active and draw accordingly
    if (mgr.quiz_active) {		
		// Define parameters for the background box.
        var box_margin = 20;                                 // horizontal margin from the edges
        var box_top = 10;                                    // top of the box
        var box_bottom = 120;                                // bottom of the box
        var box_left = box_margin;                           // left side
        var box_right = display_get_gui_width() - box_margin;  // right side
        
        // Draw a filled blue rectangle (the background box).
        draw_set_color(c_teal);
        draw_rectangle(box_left, box_top, box_right, box_bottom, false);
		
        // Draw the quiz title at a fixed position:
       // Prepare for drawing text on top.
        draw_set_color(c_white);
        
        // Draw the quiz title (centered)
        var title = "Deep Sea Explorer Quiz";
        var title_center_x = (display_get_gui_width() - string_width(title)) / 2;
        // Adjust Y coordinate as needed (here at 30)
        draw_set_font(Font6_1);  // Assuming font_question has been defined already.
        

        // Get the current question text
        if (mgr.current_question < array_length(mgr.quiz_data)) {      
            var question_text = mgr.quiz_data[mgr.current_question][0];
            // You can center the question similarly or offset it.
            var question_center_x = (display_get_gui_width() - string_width(question_text)) / 2;
            //draw_text(question_center_x, 30, title);
			draw_text(question_center_x, 50, question_text);
        } else {
            // Quiz finished
        }
        
        // Draw the final score if the quiz has finished.
        if (mgr.quiz_state == "finished" || mgr.current_question >= array_length(mgr.quiz_data)) {
				var score_text = "Final Score: " + string(score) + " / " + string(array_length(mgr.quiz_data));
            // Optionally center this text too:
            var score_center = (display_get_gui_width() - string_width(score_text)) / 2;
            draw_text(score_center, 30, "Quiz finished!");
			draw_text(score_center, 70, score_text);
		    }
        }
    }
// Mouse Left Released Event of obj_answer_button
if (point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom)) {
    var quiz_manager = instance_find(obj_quiz_manager, 0);
    if (quiz_manager != noone && quiz_manager.quiz_active) {
        var current_question = quiz_manager.quiz_data[quiz_manager.current_question_index];

        if (answer_text == current_question.correct_answer) {
            quiz_manager.score += 1;
            show_debug_message("Correct!");
            // Create feedback object (optional)
        } else {
            show_debug_message("Incorrect!");
            // Create feedback object (optional)
        }

        // Clean up current question elements
        with (obj_question) instance_destroy();
        with (obj_answer_button) instance_destroy();

        quiz_manager.current_question_index += 1;
        quiz_manager.load_next_question();
    }
}
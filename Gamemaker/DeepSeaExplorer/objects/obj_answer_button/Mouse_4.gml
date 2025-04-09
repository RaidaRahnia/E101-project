// Make sure the mouse is actually over the button (this check should pass because of the Step event, but it’s safe to verify)
if (point_in_rectangle(mouse_x, mouse_y, x - box_width/2, y - box_height/2, x + box_width/2, y + box_height/2)) {
    
    // Check the answer
    if (answer_text == correct_answer) {
        quiz_manager.score += 1;
        show_debug_message("Correct answer selected!");
    } else {
        show_debug_message("Incorrect answer selected!");
    }

    // You might want to destroy all answer button instances before loading the next question.
    with (obj_answer_button) {
        instance_destroy();
    }
    
    // Load the next question (adjust the function call if your quiz manager uses a different method name)
    quiz_manager.load_next_question();
}
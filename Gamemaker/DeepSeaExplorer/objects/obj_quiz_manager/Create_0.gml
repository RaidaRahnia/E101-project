// Load the JSON file
var file = file_open_read("level1_questions.json");
if (file != 0) {
    var json_string = "";
    while (!file_eof(file)) {
        json_string += file_text_read_string(file);
    }
    file_close(file);

    quiz_data = json_decode(json_string);
    current_question_index = 0;
    score = 0;
    quiz_active = false; // Quiz starts inactive

    // Find the treasure box object (assuming you have one)
    treasure_box = instance_find(obj_treasure_box, 0);
    if (treasure_box != noone) {
        // You might want to set a flag in the treasure box
        // or have the quiz manager listen for a specific event.
        // For simplicity, let's assume a variable in the treasure box.
        treasure_box.can_trigger_quiz = true;
    } else {
        show_debug_message("Warning: No obj_treasure_box found in the room.");
    }
} else {
    show_debug_message("Error: Could not load level1_questions.json");
    game_end();
}

function start_quiz() {
    if (!quiz_active && array_length(quiz_data) > 0) {
        quiz_active = true;
        load_next_question();
    }
}

function load_next_question() {
    if (current_question_index >= array_length(quiz_data)) {
        quiz_active = false;
        room_goto(room_game_over);
        return;
    }

    var current_question = quiz_data[current_question_index];
    var options = array_copy(current_question.options); // Create a copy to shuffle
    var correct_answer = current_question.correct_answer;

    // Shuffle the options array
    array_shuffle(options);

    // Create question display
    var question_instance = instance_create_layer(room_width / 2, 100, "Instances", obj_question);
    question_instance.question_text = current_question.question_text;

    // Create answer buttons with randomized positions
    var num_options = array_length(options);
    var button_spacing = 50;
    for (var i = 0; i < num_options; i++) {
        var button_x = room_width / (num_options + 1) * (i + 1);
        var button_y = 250 + i * button_spacing; // Adjust Y spacing if needed
        var answer_button = instance_create_layer(button_x, button_y, "Instances", obj_answer_button);
        answer_button.answer_text = options[i];
        // Store the original correct answer for checking
        answer_button.correct_answer = correct_answer;
        answer_button.is_multiple_choice = true;
    }
}
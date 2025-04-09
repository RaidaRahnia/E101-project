// Create a struct for each question
question_data = [
    {
        "question_text": "How do dolphins communicate?",
        "options": ["Through singing", "Through echolocation", "Through body language", "Through telepathy"],
        "correct_answer": "Through echolocation"
    },
    {
        "question_text": "Why is algae and seaweed important?",
        "options": ["They are a food source for whales", "They produce a majority of the oxygen we breathe", "They provide shelter for small fish", "They make the water clearer"],
        "correct_answer": "They produce a majority of the oxygen we breathe"
    },
    {
        "question_text": "Why are sharks and predators important to an ecosystem?",
        "options": ["They provide food for smaller fish", "They regulate prey populations", "They make the ocean more dangerous", "They help plants grow"],
        "correct_answer": "They regulate prey populations"
    },
    {
        "question_text": "What kind of animals are turtles?",
        "options": ["Mammals", "Amphibians", "Reptiles", "Fish"],
        "correct_answer": "Reptiles"
    },
    {
        "question_text": "What is the percentage of juvenile turtles that reach adulthood?",
        "options": ["1%", "10%", "0.1%", "50%"],
        "correct_answer": "0.1%"
    },
    {
        "question_text": "What's the name of the largest fish?",
        "options": ["Great White Shark", "Blue Whale", "Whale Shark", "Megalodon"],
        "correct_answer": "Whale Shark"
    }
];
    
	
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
	
	show_debug_message("Step 4: Found treasure box");

function start_quiz() {
	show_debug_message("start_quiz called");
    if (!quiz_active && current_question_index < array_length(question_data)) {
        quiz_active = true;
        load_next_question();
    }
}

function load_next_question() {
    if (current_question_index >= array_length(question_data)) {
        quiz_active = false;
        room_goto_next();  // or room_goto(room_game_over);
        return;
    }

    var current_question = question_data[current_question_index];
    
    // Create question display (this creates an instance of obj_question)
    var question_instance = instance_create_layer(room_width / 2, 100, "Instances", obj_question);
    question_instance.question_text = current_question.question_text;

    // Get and shuffle options
    // (If you need to copy the array rather than directly reference it, do that here)
    var options = current_question.options;
    options = array_shuffle(options);  // Note: array_shuffle() returns the shuffled array

    // Create answer buttons with 2 per row; adjust spacing as needed.
    var num_options = array_length(options);
    var button_width = 250;
    var button_height = 60;
    var spacing_x = 80;  
    var spacing_y = 30;  
    // Calculate a starting X so that 2 buttons are horizontally centered.
    
    var start_y = 250;
	var total_row_width = button_width * 2 + spacing_x;
	var start_x = room_width / 2 - total_row_width / 2;

    for (var i = 0; i < num_options; i++) {
        var col = i mod 2;
        var row = i div 2;
        var button_x = start_x + col * (button_width + spacing_x);
		var button_y = start_y + row * (button_height + spacing_y);

        var answer_button = instance_create_layer(button_x, button_y, "Instances", obj_answer_button);
        answer_button.answer_text = options[i];
        answer_button.correct_answer = current_question.correct_answer;
        answer_button.is_multiple_choice = true;
    }

    current_question_index++; // advance the question index
}
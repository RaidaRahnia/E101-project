// obj_quiz_manager: Create Event
// Quiz remains inactive until start_quiz() is called.
quiz_active = false;

// Define your quiz data (formatted as our array format):
quiz_data = scr_get_quiz_data(global.current_level);

current_question = 0;
score = 0;
quiz_state = "waiting";  // Valid states: "waiting", "feedback", "finished"
feedback_timer = 0;
selected_answer = -1;  // No answer selected initially

// Initialize an empty array for answer buttons; these will be created once the quiz starts.
answer_buttons = [];

// Timer for transitioning to the next level.
// Set to -1 to indicate the timer is not running.
level_transition_timer = -1;

// Define required score threshold (adjust as needed)
requiredScore = 4;  

// Define the function on this instance:
quiz_answer_selected = function(chosen_index) {
    if (quiz_state == "waiting") {
        selected_answer = chosen_index;
        quiz_state = "feedback";
        feedback_timer = 60;  // one-second feedback delay
        // Check answer correctness:
        if (chosen_index == quiz_data[current_question][2]) {
            score++;
        } else {
            show_debug_message("Incorrect answer!");
        }
    }
};

/// @description Starts the quiz (called when the submarine collides with a chest)
function start_quiz() {
    quiz_active = true;
    global.retrying_quiz = false;

	
    instance_destroy(obj_interaction);
    with (obj_back_button) {
    instance_destroy();
    } 
    // Create answer button instances.
    var start_x = 100;
    var start_y = 300;
    var spacing = 60;  // vertical space between buttons

    // If there are 4 answer options for each question.
    for (var i = 0; i < 4; i++){
        var btn = instance_create_layer(start_x, start_y + i * spacing, "Instances", obj_quiz_button);
        if (btn == noone) {
            show_debug_message("Error: Could not create instance of obj_quiz_button. Check object name and layer!");
        }
        btn.btn_index = i;                  // Give the button its answer index (0, 1, 2, 3)
        btn.manager = id;                   // Link button to this quiz manager
        btn.button_text = quiz_data[current_question][1][i];  // Set initial answer text
        answer_buttons[i] = btn;            // Store the button instance in the array
    }
	
	audio_stop_all()
	if room=rm_level1 {
		audio_play_sound(Sigma_Slide_The_Soundlings,0,true,0.5)
	}
	if room=rm_level2 {
		audio_play_sound(Spring_Field_Godmode,0,true,0.5)
	}
	if room=rm_level3 {
		audio_play_sound(Sleep_Music_No_1_Chris_Haugen,0,true)
	}
	if room=rm_level4 {
		audio_play_sound(Creeping_Up_on_You_Godmode,0,true)
	}
}

/// Reset the quiz to initial state
function reset_quiz() {
    current_question = 0;
    score = 0;
    selected_answer = -1;
    quiz_state = "waiting";
    quiz_active = true;

    // Destroy old buttons if they still exist
    for (var i = 0; i < array_length(answer_buttons); i++) {
        if (instance_exists(answer_buttons[i])) {
            instance_destroy(answer_buttons[i]);
        }
    }
    answer_buttons = [];

    // Recreate the buttons for question 1
    var start_x = 100;
    var start_y = 300;
    var spacing = 60;

    for (var i = 0; i < 4; i++) {
        var btn = instance_create_layer(start_x, start_y + i * spacing, "Instances", obj_quiz_button);
        btn.btn_index = i;
        btn.manager = id;
        btn.button_text = quiz_data[0][1][i];
        answer_buttons[i] = btn;
    }
}

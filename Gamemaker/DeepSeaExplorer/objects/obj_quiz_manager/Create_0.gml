// obj_quiz_manager: Create Event

// Quiz remains inactive until start_quiz() is called.
quiz_active = false;

// Define your quiz data (formatted as our array format):
quiz_data = [
    ["How do dolphins communicate?", 
         ["Through singing", "Through echolocation", "Through body language", "Through telepathy"],
         1],
    ["Why is algae and seaweed important?",
         ["They are a food source for whales", "They produce a majority of the oxygen we breathe", "They provide shelter for small fish", "They make the water clearer"],
         1],
    ["Why are sharks and predators important to an ecosystem?",
         ["They provide food for smaller fish", "They regulate prey populations", "They make the ocean more dangerous", "They help plants grow"],
         1],
    ["What kind of animals are turtles?",
         ["Mammals", "Amphibians", "Reptiles", "Fish"],
         2],
    ["What is the percentage of juvenile turtles that reach adulthood?",
         ["1%", "10%", "0.1%", "50%"],
         2],
    ["What's the name of the largest fish?",
         ["Great White Shark", "Blue Whale", "Whale Shark", "Megalodon"],
         2]
];

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
        feedback_timer = 15;  // one-second feedback delay
        // Check answer correctness:
        if (chosen_index == quiz_data[current_question][2]) {
            score++;
            show_debug_message("Correct answer!");
        } else {
            show_debug_message("Incorrect answer!");
        }
    }
};

/// @description Starts the quiz (called when the submarine collides with a chest)
function start_quiz() {
    quiz_active = true;
    
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
}
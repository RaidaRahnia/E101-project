// obj_quiz_button: Create Event
if (sprite_index == noone) {
     sprite_index = spr_button; // A sprite that matches the button dimensions.
}
// obj_quiz_button: Create Event
btn_index = 0;         // This will be overwritten by the manager when created
button_text = "";      // The text to display; set by the manager
manager = noone;       // A pointer that will reference the quiz manager instance

font_answer = font_add("PeaberryMono.ttf", 17, false, false, 32, 128);
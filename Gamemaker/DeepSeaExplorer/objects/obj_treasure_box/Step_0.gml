// obj_chest: Step Event

// --- 1) Proximity & icon logic --------------------------------------
// Find whichever submarine exists
var sub = noone;
if (instance_exists(obj_submarine_parent)) {
    sub = instance_find(obj_submarine_parent, 0);
} else if (instance_exists(obj_submarine_dark)) {
    sub = instance_find(obj_submarine_dark, 0);
}

// Only allow proximity checks if we haven’t used this chest yet
if (sub != noone && can_trigger_quiz) {
    var threshold = 100;  // adjust as needed
    var dist = point_distance(x, y, sub.x, sub.y);
    
    if (dist < threshold) {
        interactable = true;
        if (!instance_exists(interaction)) {
            interaction = instance_create_layer(x + 20, y - 10, layer, obj_interaction_icon);
        }
    } else {
        interactable = false;
        if (instance_exists(interaction)) {
            instance_destroy(interaction);
        }
    }
}

// --- 2) “Press Space to Quiz?” → Enter confirmation state ----------
if (interactable && keyboard_check_pressed(vk_space) && !confirming_quiz) {
    confirming_quiz = true;
    // (optional) play a “confirm?” sound here
}

// --- 3) Handle Y/N while confirming -------------------------------
if (confirming_quiz) {
    // Cancel
    if (keyboard_check_pressed(ord("N"))) {
        confirming_quiz = false;
    }
    // Confirm
    else if (keyboard_check_pressed(ord("Y"))) {
        // === Begin your original trigger‑quiz code ===
        var quiz_manager = instance_find(obj_quiz_manager, 0);
        if (quiz_manager != noone && !quiz_manager.quiz_active) {
            quiz_manager.start_quiz();
        } else if (quiz_manager == noone) {
           show_debug_message("No quiz manager found — creating new one");
            quiz_manager = instance_create_layer(672, 480, "Instances", obj_quiz_manager);
            quiz_manager.start_quiz();
        }
        // Clean up: remove icon and disable retrigger
        if (instance_exists(interaction)) {
            instance_destroy(interaction);
        }
        can_trigger_quiz = false;
        // Destroy the chest itself
        instance_destroy();
        // === End original code ===
        confirming_quiz = false;  
    }
}

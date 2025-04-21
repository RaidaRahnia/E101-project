/// Retry Button: Mouse Left Pressed

if (instance_exists(obj_quiz_manager)) {
    with (obj_quiz_manager) {
        reset_quiz();
    }
}

if (instance_exists(obj_keep_exploring_button)) {
    with (obj_keep_exploring_button) instance_destroy();
}

// Destroy this retry button after pressing
instance_destroy();

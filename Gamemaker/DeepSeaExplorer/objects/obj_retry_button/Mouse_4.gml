/// Retry Button: Mouse Left Pressed

if (instance_exists(obj_quiz_manager)) {
    with (obj_quiz_manager) {
        reset_quiz();
    }
}

// Destroy this retry button after pressing
instance_destroy();

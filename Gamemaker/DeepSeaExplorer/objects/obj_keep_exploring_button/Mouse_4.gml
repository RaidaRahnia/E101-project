/// Keep Exploring Button: Mouse Left Pressed

// Destroy the quiz manager if it exists
global.current_level -= 1;
with (obj_quiz_manager) {
    instance_destroy();
}

instance_create_layer(0, 608, "Instances", obj_treasure_box);


// Clean up any buttons still on screen
with (obj_retry_button) {
    if (instance_exists(id)) {
        instance_destroy();
    }
}
instance_destroy(); // destroy self (the explore button)

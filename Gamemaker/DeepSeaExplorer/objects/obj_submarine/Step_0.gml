// Move up
if keyboard_check(vk_up) {
    if !place_meeting(x, y - 5, obj_jellyfish) {
        y -= 5;
    } else {
        move_contact_solid(direction, 5);
    }
}
// Move down
if keyboard_check(vk_down) {
    if !place_meeting(x, y + 5, obj_jellyfish) {
        y += 5;
    } else {
        move_contact_solid(direction, 5);
    }
}
// Move left
if keyboard_check(vk_left) {
    if !place_meeting(x - 5, y, obj_jellyfish) {
        x -= 5;
    } else {
        move_contact_solid(direction, 5);
    }
}

// Check for nearby objects
var obj = instance_nearest(x, y, obj_jellyfish);
if obj != noone && point_distance(x, y, obj.x, obj.y) < 150 { // Adjust distance as needed
    // Interaction
    if keyboard_check_pressed(ord("E")) {
        // Code to interact with the object
        // Create textbox instance
        var textbox = instance_create_layer(x, y - 60, "Instances", obj_txtbox);
		textbox.message = scr_wrap_text("Fun Fact! Jellyfish are about 95% to 98% water and don't actually have a brain, heart, or lungs. Lots of jellyfish have a very short lifespan but one, Turritopsis dohrnii, is an immortal jellyfish that can restart it's life cycle when under stress or grows old.", 380);  // Set the message// Adjust position as needed
    }
}

// Wrap around the room
if x < 0 {
    x = room_width;
} else if x > room_width {
    x = 0;
}
if y < 0 {
    y = room_height;
} else if y > room_height {
    y = 0;
}


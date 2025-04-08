
if(instance_exists(obj_dialog)) exit;
    

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

// Move right
if keyboard_check(vk_right) {
    if !place_meeting(x + 5, y, obj_jellyfish) {
        x += 5;
    } else {
        move_contact_solid(direction, 5);
    }
    sprite_index = spr_player_right; // Change to right-facing sprite
}



// Move left
if keyboard_check(vk_left) {
    if !place_meeting(x - 5, y, obj_jellyfish) {
        x -= 5;
    } else {
        move_contact_solid(direction, 5);
    }
    sprite_index = spr_player_left; // Change to left-facing sprite
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
		
		var text_width = string_width(textbox.message);
		var text_height = string_height(textbox.message);
		
		// Prevent textbox from going off-screen
		if textbox.x < 0 {
			textbox.x = 10; // Padding from the left
		} 
		if textbox.x + text_width > room_width {
		    textbox.x = room_width - text_width;
			//textbox.x = room_width - text_width - 10; // Padding from the right
		}
		if textbox.y < 0 {
		    textbox.y = 10; // Padding from the top
		} 
		if textbox.y + text_height > room_height {
		    textbox.y = room_height - text_height;
			//textbox.y = room_height - text_height - 10; // Padding from the bottom
		}
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


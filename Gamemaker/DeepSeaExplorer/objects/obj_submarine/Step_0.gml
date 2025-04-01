var previous_x = x;
var previous_y = y;
// Step Event of the submarine object

var moving = false;
if (keyboard_check(vk_right)) {
    x += 5;
	sprite_index = spr_player_right;
    moving = true;
     // Face right
}

if (keyboard_check(vk_left)) {
    x -= 5;
	sprite_index = spr_player_left;
    moving = true;
     // Face left
}

if (keyboard_check(vk_up)) {
    y -= 5;
}
if (keyboard_check(vk_down)) {
    y += 5;
}

var jellyfish_nearby = instance_place(x, y, obj_jellyfish);

if (jellyfish_nearby) {
    // Stop movement if colliding
    if (place_meeting(x, y, obj_jellyfish)) {
        x = previous_x;
        y = previous_y;
    }

    // Interaction
    if (keyboard_check_pressed(ord("E"))) {
        // Handle interaction logic here
        show_message("Interacting with the jellyfish!");
    }
}

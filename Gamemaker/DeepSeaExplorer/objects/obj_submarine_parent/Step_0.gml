if(instance_exists(obj_dialog)) exit;
    
if(!instance_exists(obj_treasure_box)) exit;
    
// Move up
if keyboard_check(vk_up) {
    if y > 0 {
        y -= 5;
    }
}
// Move down
if keyboard_check(vk_down) {
    
    if y < room_height - sprite_height {
        y += 5;
    }
}

// Move right
if keyboard_check(vk_right) {
    if x < room_width - sprite_width {
        x += 5;
    }
    sprite_index = spr_player_right; // Change to right-facing sprite
}



// Move left
if keyboard_check(vk_left) {
    if x > 0 {
        x -= 5;
    }
    sprite_index = spr_player_left; // Change to left-facing sprite
}
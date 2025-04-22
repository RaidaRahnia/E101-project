if (!variable_global_exists("current_level")) global.current_level = 1;
if (!variable_global_exists("retrying_quiz")) global.retrying_quiz = false;
if (!variable_global_exists("skip_level_increment")) global.skip_level_increment = false;
if (!variable_global_exists("coming_from_pause")) global.coming_from_pause = false;

if (!global.retrying_quiz 
    && !global.skip_level_increment 
    && !global.coming_from_pause 
    && room != rm_help 
    && room != rm_pause_menu 
    && room != rm_menu) {

    global.current_level += 1;
    show_debug_message("✅ Level incremented: " + string(global.current_level));
} else {
    show_debug_message("❌ Level NOT incremented (retry/help/pause/flagged)");
}

// 🔁 Reset flags so they only affect the current room transition
global.retrying_quiz = false;
global.skip_level_increment = false;
global.coming_from_pause = true;
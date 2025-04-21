// First-time init (just in case)
if (!variable_global_exists("retrying_quiz")) {
    global.retrying_quiz = false;
}

// Only increment the level if not retrying
if (!global.retrying_quiz && room != rm_help && room != rm_pause_menu) {
    global.current_level += 1;
}

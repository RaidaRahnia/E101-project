var quiz_manager = instance_find(obj_quiz_manager, 0);
if (quiz_manager != noone) {
    draw_text(x, y, "Score: " + string(quiz_manager.score));
}
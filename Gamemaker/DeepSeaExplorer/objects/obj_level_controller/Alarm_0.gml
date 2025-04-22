// obj_level_controller: Alarm[0]
if (!instance_exists(obj_quiz_manager)) {
    var qm = instance_create_layer(672, 480, "Instances", obj_quiz_manager);
    //qm.start_quiz(); // optional: only if you're auto-starting
}
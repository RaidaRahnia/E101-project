if(instance_exists(obj_dialog)) exit;
    
if(instance_exists(obj_submarine_parent) && distance_to_object(obj_submarine_parent) < 0.5)
{
    can_talk = true;
    if(keyboard_check_pressed(input_key))
    {
        audio_play_sound(Pop,0,false,1,0.30);
		create_dialogue(dialog)
		if (can_count) {
			global.completed += 1;
			can_count = false;
		}
		
    }
}

else
{
   can_talk = false; 
}
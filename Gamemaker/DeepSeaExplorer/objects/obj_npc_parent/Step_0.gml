if(instance_exists(obj_dialog)) exit;
    
if(instance_exists(obj_submarine_parent) && distance_to_object(obj_submarine_parent) < 0.5)
{
    can_talk = true;
    if(keyboard_check_pressed(input_key))
    {
        audio_play_sound(Pop,0,false,1,0.30);
		create_dialogue(dialog)
    }
}

else
{
   can_talk = false; 
}
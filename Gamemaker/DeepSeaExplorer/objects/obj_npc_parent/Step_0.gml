if(instance_exists(obj_dialog)) exit;
    
if(instance_exists(obj_submarine) && distance_to_object(obj_submarine) < 8)
{
    can_talk = true;
    if(keyboard_check_pressed(input_key))
    {
        create_dialogue(dialog)
    }
}

else
{
   can_talk = false; 
}
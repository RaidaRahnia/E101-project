draw_self();

if(can_talk && !instance_exists(obj_dialog))
{
    draw_sprite(interaction_icon, 0, x, y - 16);
}
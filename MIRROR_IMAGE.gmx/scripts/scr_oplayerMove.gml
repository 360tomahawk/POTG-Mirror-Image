if(keyboard_check(vk_left))
    key_left = -1;
    else
    key_left = 0;
if(keyboard_check(vk_right))
    key_right = 1;
    else
    key_right = 0;
if(keyboard_check(vk_up))
    key_up = -1;
    else
    key_up = 0;
if(keyboard_check(vk_down))
    key_down = 1;
    else
    key_down = 0;

hsp = (key_left + key_right) * -movespeed;
vsp = (key_up + key_down) * movespeed;

//--------------------------------
if(place_meeting(x,y + vsp,obj_collidable_parent))
{
    vsp = 0;
}

if(place_meeting(x + hsp,y,obj_collidable_parent))
{
    hsp = 0;
}

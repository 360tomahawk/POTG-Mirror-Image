if(keyboard_check(vk_left))
{
    key_left = -1;
    sprite_index = spr_player_side;
}
else
key_left = 0;
if(keyboard_check(vk_right))
{
    key_right = 1;
    sprite_index = spr_player_side;
}
else
key_right = 0;
if(keyboard_check(vk_up))
{
    key_up = -1;
    sprite_index = spr_player_back;
}
else
key_up = 0;
if(keyboard_check(vk_down))
{
    key_down = 1;
    sprite_index = spr_player;
}
else
key_down = 0;

hsp = (key_left + key_right) * movespeed;
if(hsp != 0)
{
    image_xscale = -sign(hsp);
}
if(hsp == 0 && vsp == 0)
{
    image_speed = 0;
}
else
{
    image_speed = 4/room_speed;
}
vsp = (key_up + key_down) * movespeed;

//--------------------------------
if(place_meeting(x, y + vsp, obj_collidable_parent) || place_meeting(x, y + vsp, obj_red_door))
{
    vsp = 0;
}

if(place_meeting(x + hsp, y, obj_collidable_parent)|| place_meeting(x + hsp, y, obj_red_door))
{
    hsp = 0;
}

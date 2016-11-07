smth_above = false;
smth_below = false;

if(needs_adjust == true)
{
    with(obj_wall)
    {
        if(x == other.x)
        {
            if(y == other.y - sprite_height)
            {
                other.smth_above = true;
            }
            else if(y == other.y + sprite_height)
            {
                other.smth_below = true;
            }
        }
    }
    if(smth_above == true && smth_below == true)
    {
        image_index = 0;
        needs_adjust = false;
    }
    else if(smth_above == false && smth_below == false)
    {
        image_index = 1;
        needs_adjust = false;
    }
    else if(smth_above == true && smth_below == false)
    {
        image_index = 1;
        needs_adjust = false;
    }
    else if(smth_above == false && smth_below == true)
    {
        image_index = 0;
        needs_adjust = false;
    }
}

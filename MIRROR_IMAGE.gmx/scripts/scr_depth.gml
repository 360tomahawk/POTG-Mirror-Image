//this script affects all isometrical objects.
if(instance_exists(obj_wall))
{
    i = instance_nearest(x,y,obj_wall);
    
    if(y > i.y)
    {
        depth = -(i.depth + i.sprite_height);
    }
    else if(y < i.y)
    {
        depth = (i.depth + i.sprite_height);
    } 
}



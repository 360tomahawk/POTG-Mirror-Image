if(instance_exists(obj_wall))
{
    i = instance_nearest(x,y,obj_wall);
    
    if(y > i.y)
    {
        depth = -1000;
    }
    else if(y < i.y)
    {
        depth = 1000;
    } 
}



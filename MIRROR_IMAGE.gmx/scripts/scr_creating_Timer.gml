///scr_creating_Timer(zeTimeLimit)
var theInstance;
if(!instance_exists(obj_timer))
{
    theInstance = instance_create(0,0,obj_timer);
}
theInstance.zeCountingTimeSec = argument0;

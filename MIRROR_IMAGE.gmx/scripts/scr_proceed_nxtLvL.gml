///scr_proceed_nxtLvL()
if (room == room_last)
{
    room_goto(rm_win);
}
else
{
    room_goto_next();
    audio_play_sound(snd_nextLevel,0,0);
    global.fogged = false;
}

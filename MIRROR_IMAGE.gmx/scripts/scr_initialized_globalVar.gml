///scr_initialized_globalVar()
global.TimerLimitSec = 801;
global.TurnOnSound = true;
global.fogged = false;
global.PlayerScore = 0;
if(global.TurnOnSound)
{
var isPlaying = false;

if(isPlaying == false)
{
    audio_play_sound(snd_mainmenu,0,1);
    isPlaying = true;
}

audio_stop_sound(snd_ingame);
}

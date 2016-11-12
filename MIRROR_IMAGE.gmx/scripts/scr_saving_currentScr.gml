///scr_saving_currentScr(zeArr)
ini_open("SaveFile.sav");
var playerScore = global.PlayerScore;
var ListOfArrays = argument0;

if (ini_key_exists("Save","NumPlayers"))
{
    var num;  
    num = ini_read_real("Save", "NumPlayers",0);
    var needToCheckForPlayerScore = false;
    if (num >= 5) 
        needToCheckForPlayerScore = true;
    else
        ListOfArrays[@ 4] = playerScore;
    
    var numbersNeedToRepeat = num;
    repeat (num)
    {
        ListOfArrays[@ (num-1)] = ini_read_real("Save", string(num-1),0);
        --num;   
    }
    var CurrentLowestVal = ListOfArrays[@ 0];
    var startCountingDown = 0;
    var whichPosToSwap;
    repeat (array_length_1d(ListOfArrays))
    {
        for (var zeNum = startCountingDown; zeNum < array_length_1d(ListOfArrays); ++zeNum)
        {
            if (CurrentLowestVal < ListOfArrays[@ zeNum])
            {
                CurrentLowestVal = ListOfArrays[@ zeNum];
                whichPosToSwap = zeNum;
            }
        }
        if (ListOfArrays[@ startCountingDown] > CurrentLowestVal)
        {
            var toSwap = ListOfArrays[@ startCountingDown];
            ListOfArrays[@ startCountingDown] = CurrentLowestVal;
            ListOfArrays[@ whichPosToSwap] = toSwap;
        }
        ++startCountingDown;
    }
    if (needToCheckForPlayerScore)
    {
        for (var zeNum = 0; zeNum < array_length_1d(ListOfArrays); ++zeNum)
        {
            if (playerScore > ListOfArrays[@ zeNum])
            {
                var zeVal = ListOfArrays[@ zeNum];
                ListOfArrays[@ zeNum] = playerScore;
                for (var zeNum2 = zeNum+1; zeNum2 < array_length_1d(ListOfArrays); ++zeNum2)
                {
                    var zeVal2 = zeVal;
                    zeVal = ListOfArrays[@ zeNum2];
                    ListOfArrays[@ zeNum2] = zeVal2;
                }
                break;
            }
        }
    }
}
else
{
    ListOfArrays[@ 0] = playerScore;
}
ini_write_real("Save", "NumPlayers", array_length_1d(ListOfArrays));
for (var num = 0; num < array_length_1d(ListOfArrays); ++num)
{
    ini_write_real("Save", string(num), ListOfArrays[@ num]);
}

//ini_section_delete('Save');
ini_close();

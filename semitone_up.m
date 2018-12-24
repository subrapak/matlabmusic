% function for finding the key one semitone above
function[semiup]=semitone_up(key1)

%creating the 'mixing wheel'
minor=["1 A"; "2 A"; "3 A";"4 A"; "5 A"; "6 A"; "7 A"; "8 A"; string('9 A'); "10 A"; "11 A"; "12 A"];
major=["1 B"; "2 B"; "3 B"; "4 B"; "5 B"; "6 B"; "7 B"; "8 B"; "9 B"; "10 B"; "11 B"; "12 B"];
wheel=[minor,major];

%split the key of the song into number and letter
raw1=split(key1);
rawnum=str2double(raw1(1));

%going 7 places clockwise around the wheel
    if rawnum < 6
        place = rawnum + 7;
    else
        place = rawnum - 5;
    end
    
    if raw1(2) == "A"
        semiup = wheel(place,1);
    else
        semiup = wheel(place,2);
    end
end

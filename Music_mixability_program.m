% Music mixability program
clear all
%get data from audiokeychain file
[NUM,TXT,RAW]=xlsread('AudioKeychain_export.xlsx');

%extract the key and BPM of the song
RAWKEY=TXT(2:end,6);
BPMS=NUM(1:end,3);
NAMES=TXT(2:end,2);
NEWKEY = music_letkey(RAWKEY);

%matrix of songs
SONGS=[NAMES,string(BPMS),NEWKEY];

%find the compatibility matrix for each song


for i = 1:length(NAMES)
    count=2;
    for j = 1:length(NAMES)
       ticker=0;
        if i ~= j
        X=variables(SONGS(i,3));
        Y=variables(SONGS(j,3));
        RESULT(i,1)=NAMES(i);
      
            if 0.95*BPMS(i) < BPMS(j)
            if BPMS(j) < 1.05*BPMS(i)
                for o = 1:3
                for m = 1:3
                for n = 1:3
                    if ticker==0
                    if X(1,o)==Y(n,m)
                      RESULT(i,count)=NAMES(j);
                      count = count+1;
                      ticker=ticker+1;
                    end
                    end
                end
                end
                end
            end
        
        end  
        end
    end
end



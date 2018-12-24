%converting letter keys into alphanumeric

function [RES] = music_letkey(M)
    %V = zeros(length(M));
    
    for i = 1:length(M)
        if M(i) == "Dbm"
            V(i) = "12 A";
        elseif M(i) == "Abm"
            V(i) = "1 A";
        elseif M(i) == "Ebm"
            V(i) = "2 A";
        elseif M(i) == "Bbm"
            V(i) = "3 A";
        elseif M(i) == "Fm"
            V(i) = "4 A";
        elseif M(i) == "Cm"
            V(i) = "5 A";
        elseif M(i) == "Gm"
            V(i) = "6 A";
        elseif M(i) == "Dm"
            V(i) = "7 A";
        elseif M(i) == "Am"
            V(i) = "8 A";
        elseif M(i) == "Em"
            V(i) = "9 A";
        elseif M(i) == "Bm"
            V(i) = "10 A";
        elseif M(i) == "Gbm"
            V(i) = "11 A";
        elseif M(i) == "E"
            V(i) = "12 B";
        elseif M(i) == "B"
            V(i) = "1 B";
        elseif M(i) == "Gb"
            V(i) = "2 B";
        elseif M(i) == "Db"
            V(i) = "3 B";
        elseif M(i) == "Ab"
            V(i) = "4 B";
        elseif M(i) == "Eb"
            V(i) = "5 B";
        elseif M(i) == "Bb"
            V(i) = "6 B";    
        elseif M(i) == "F"
            V(i) = "7 B";
        elseif M(i) == "C"
            V(i) = "8 B";
        elseif M(i) == "G"
            V(i) = "9 B";
        elseif M(i) == "D"
            V(i) = "10 B";
        elseif M(i) == "A"
            V(i) = "11 B";   
        else
            V(i) = "nope";
        end
    end
    
    RES = V';
    
end
        

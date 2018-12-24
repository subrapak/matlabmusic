%comparison function

function [count] = harmonic_compare(M,N)
count= 0;

for n = 1:length(M)
        if count == 0
            if M(n) == N(1)
                count = count+1;
            end
        else
        end
end
end
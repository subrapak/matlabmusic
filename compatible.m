%function for finding compatible keys

function [comp1,comp2,comp3] = compatible(key1)

%creating the mixing wheel
minor=[string('1 A'); string('2 A'); string('3 A'); string('4 A'); string('5 A'); string('6 A'); string('7 A'); string('8 A'); string('9 A'); string('10 A'); string('11 A'); string('12 A')];
major=[string('1 B'); string('2 B'); string('3 B'); string('4 B'); string('5 B'); string('6 B'); string('7 B'); string('8 B'); string('9 B'); string('10 B'); string('11 B'); string('12 B')];
wheel=[minor,major];

for i=1:12
    for j=1:2
        %checking where input is in the wheel matrix
        if key1 == wheel(i,j)
            %finding the index in the matrix
            %of the given key
            index=[i,j];
            
            %finding compatible keys
            if i == 1
                comp1 = wheel(i+11,j);
            else
                comp1 = wheel(i-1,j);
            end
            
            if i == 12
                comp2 = wheel(i-11,j);
            else
                comp2 = wheel(i+1,j);
            end
            
            if j==1
                comp3 = wheel(i,j+1);
            else
                comp3 = wheel(i,j-1);
            end
        end
    end
end
end



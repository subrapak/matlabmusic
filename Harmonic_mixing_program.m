%Harmonic mixing program

%user input for first key (song A)
keyA=input('What is the key of the first song? ','s');

%user input for second key (song B)
keyB=input('What is the key of the second song? ','s');

[MA,AD,AI,AU] = variables(keyA);
[MB,BD,BI,BU] = variables(keyB);

%compare AI and BI
count1 = harmonic_compare(AI,BI);
if count1 > 0
    disp('They are naturally compatible')
end

%compare AI and BU
count2 = harmonic_compare(AI,BU);
if count2 > 0
    disp(strcat('Move the second up one semitone to [',BU(1),']'))
end

%compare AI and BD
count3 = harmonic_compare(AI,BD);
if count3 > 0
    disp(strcat('Move the second down one semitone to [',BD(1),']'))
end

%compare AU and BI
count4 = harmonic_compare(AU,BI);
if count4 > 0
    disp(strcat('Move the first up one semitone to [',AU(1),']'))
end

%compare AU and BD
count5 = harmonic_compare(AU,BD);
if count5 > 0
    disp(strcat('Move the first up to [',AU(1),'] and the second down to [',BD(1),']'))
end

%compare AD and BI
count6 = harmonic_compare(AD,BI);
if count6 > 0
    disp(strcat('Move the first down one semitone to [',AD(1),']'))
end

%compare AD and BU
count7 = harmonic_compare(AD,BU);
if count7 > 0
    disp(strcat('Move the first down to [',AD(1),'] and the second up to [',BU(1),']'))
end

%total number of methods
count = count1 + count2 + count3 + count4 + count5 + count6 + count7;

%statement if songs are not mixable
if count == 0 
    disp('SORRY! You need to move the keys by more than one semitone!')
end

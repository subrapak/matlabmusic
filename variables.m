%finding matrices of compatibility between two songs

function [M,D,I,U] = variables(key)

%creating the 'mixing wheel'
minor=["1 A"; "2 A"; "3 A";"4 A"; "5 A"; "6 A"; "7 A"; "8 A"; string('9 A'); "10 A"; "11 A"; "12 A"];
major=["1 B"; "2 B"; "3 B"; "4 B"; "5 B"; "6 B"; "7 B"; "8 B"; "9 B"; "10 B"; "11 B"; "12 B"];
wheel=[minor,major];


%finding one semitone up for song A
[semiup]=semitone_up(key);
%disp(strcat('One semitone up for song A gives [',semiupA,']'));

%finding one semitone down for song A
[semidown]=semitone_down(key);
%disp(strcat('One semitone down for song A gives [',semidownA,']'));

%finding compatible keys for song A
[comp1i,comp2i,comp3i] = compatible(key);
%disp(strcat('The first song is compatible with [',compA1i,'], [',compA2i,'] and [',compA3i,']'));

%finding compatible keys for one semitone up for song A
[comp1u,comp2u,comp3u] = compatible(semiup);
%disp(strcat('One semitone above the first song is compatible with [',compA1u,'], [',compA2u,'] and [',compA3u,']'));

%finding compatible keys for one semitone down for song A
[comp1d,comp2d,comp3d] = compatible(semidown);
%disp(strcat('One semitone below the first song is compatible with [',compA1d,'], [',compA2d,'] and [',compA3d,']'));

D = [semidown;comp1d;comp2d;comp3d];
I = [key;comp1i;comp2i;comp3i];
U = [semiup;comp1u;comp2u;comp3u];

M=[D,I,U];

end
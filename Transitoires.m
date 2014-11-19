%Programme pour d�terminer le nombre de transitoire(s) (donc la fr�quence
%d'oscillation) d'un m�tronome :
clear all
close all
%On charge le fichier � analyser
D = load('TransitoiresDeuxMetronomes(HauteFr�quence).txt');
%On d�fini la taille du tableau contenu dans le fichier
taille = length(D(:,1));
%On d�clare deux variables qui contiendront le nombre de transitoire de
%chaque m�tronome
n1=0;
n2=0;
%On cr�e une valur temporaire d'incr�mentation
i = 1;

while(i<taille)
    abs(D(i,1));
    if(abs(D(i,2)) > 0.30)
        n1 = n1+1;
        i = i+500;
    end
    i = i+1;
end
%On affiche maintenant n1
n1

i = 1;

while(i<taille)
    abs(D(i,1));
    if(abs(D(i,3)) > 0.30)
        n2 = n2+1;
        i = i+500;
    end
    i = i+1;
end
%On affiche maintenant n2
n2
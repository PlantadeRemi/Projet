%Programme pour déterminer le nombre de transitoire(s) (donc la fréquence
%d'oscillation) d'un métronome :
clear all
close all
%On charge le fichier à analyser
D = load('TransitoiresDeuxMetronomes(HauteFréquence).txt');
%On défini la taille du tableau contenu dans le fichier
taille = length(D(:,1));
%On déclare deux variables qui contiendront le nombre de transitoire de
%chaque métronome
n1=0;
n2=0;
%On crée une valur temporaire d'incrémentation
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
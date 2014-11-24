%Programme pour afficher la variation de fr�quence d'un m�tronome:
clear all
close all
%On charge le fichier � analyser
D = load('TransitoiresDeuxMetronomes(HauteFr�quence).txt');
%On d�fini la taille du tableau contenu dans le fichier
taille = length(D(:,1));
%On cr�e une valeur temporaire d'incr�mentation
i = 1;
x = zeros(1,300);
y = zeros(1,300);
v = zeros(1,300);
A = 1;
while(i<taille)
    abs(D(i,1));
    if(abs(D(i,2)) > 0.30)
        x(A) = abs(D(i,1));
        y(A) = abs(D(i,2));
        i = i+500;
        A = A+1;
    end
    i = i+1;
end

i = 1;
tailleX = length(x);

while(i<tailleX)
    v(i) = x(i+1) - x(i);
    i = i+1;
end

plot(v,y,'*');
grid on
hold on
i = 1;
x = zeros(1,300);
y = zeros(1,300);
A = 1;

while(i<taille)
    abs(D(i,1));
    if(abs(D(i,3)) > 0.30)
        x(A) = abs(D(i,1));
        y(A) = abs(D(i,3));
        i = i+500;
        A = A+1;
    end
    i = i+1;
end

while(i<tailleX)
    v(i) = x(i+1) - x(i);
    i = i+1;
end

plot(v,y,'r+');

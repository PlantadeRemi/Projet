%Programme qui affiche la différence de périodes de deux métronomes en
%synchronisation
clear all
close all
%On charge le fichier à analyser
D = load('Synchro Fréquence Différentes.txt');
%On défini la taille du tableau contenu dans le fichier
taille = length(D(:,1));
%On crée une valeur temporaire d'incrémentation
i = 1;
%on intialise les variables (tableaux) a 0
x = zeros(1,300);
y = zeros(1,300);
v = zeros(1,300);
z = zeros(1,300);
u= zeros(1,300);
A = 1;
h=0;
g=0;
a = 0;
b = 0;
while(i<taille)
    %On prend la valeur de la premiere colonne suivant sa positon i dans
    %celle ci
    abs(D(i,1));
    if(abs(D(i,2)) > 0.30)
        %On met les valeurs du temps pour laqu'elle on a une amplitude supérieur a 0.3 dans la colonne 2  
        if(g == 0)
             g = abs(D(i,1));
             %On range le temps pour lequel on a un pic dans g (par ex
             %:premier pic
        end
        if( h ~=0)%sert a compare le h avec le pic suivant g afin d'éviter le saut d'un delta t^(par ex le troisieme pic
            x(A) = ( g - h); %calcul le delta t entre le deuxieme et le troisieme pic par exmple 
            A=A+1;
            h=0;
        end
        if( g ~= abs(D(i,1)) && h ==0)
            h = abs(D(i,1));
            %on range le temps ou l'on a pic suivant dans h ( par ex le
            %deuxieme pic
            
        end
        i = i+500;
        if(g ~= 0 && h ~= 0)
            x(A) = ( h - g);%calcul le delta t etre le premier et deuxieme pic par exemple
            %Permet de trouver le delta t entre deux pics
            A=A+1;
            %h=0;
            g=0;
        end
        
    end
       %x(A)
        %On entre les valeurs 
        %h1(A) = i;
        i = i+1;
       % A = A+1;
    
end
h=0;
g=0;
i = 1;
A = 1;
while(i<taille)
    %On prend la valeur de la premiere colonne suivant sa positon i dans
    %celle ci
    abs(D(i,1));
    if(abs(D(i,3)) > 0.30)
        %On met les valeurs du temps pour laqu'elle on a une amplitude supérieur a 0.3 dans la colonne 2  
        if(g == 0)
             g = abs(D(i,1));
             %On range le temps pour lequel on a un pic dans g 
        end
        if( h ~=0)%sert a compare le h avec le pic suivant g afin d'éviter le saut d'un delta t
            y(A) = ( g - h);
            A=A+1;
            h=0;
        end
        if( g ~= abs(D(i,1)) && h ==0)
            h = abs(D(i,1));
            %on range le temps ou l'on a pic suivant dans h
            
        end
        i = i+500;
        if(g ~= 0 && h ~= 0)
            y(A) = ( h - g);
            %Permet de trouver le delta t entre deux pics
            A=A+1;
            %h=0;
            g=0;
        end
        
    end
       %x(A)
        %On entre les valeurs 
        %h1(A) = i;
        i = i+1;
       % A = A+1;
    
end

i=1; 
A=1;

while(i<taille)
    abs(D(i,1));
    if(abs(D(i,2)) > 0.30)
        v(A) = abs(D(i,1));% définit la durée sur le quel on visualise notre difference entre les periodes(axe des x)
        i = i+500;
        A = A+1;
    end
    i = i+1;
end

taille = length(v(:,1));

i = 1;
A=1;
while(taille > i)
  
  u(A) = y(A) - x(A);
  A =A+1;
  i=i+1;
  
end
plot(v,x,'b*');
grid on;
hold on;
plot(v,y,'r+');
grid on;
hold on
plot(v,u,'ko');


%On cr?e un programme qui affiche les courbes de limute de la synchro en
%fonction des valeurs observ?es de mani?re visuelle
clear all
close all

Metro1=zeros(1,4); % Battement de r?f?rence
Metro2=zeros(1,4); %Limite inferieure
Metro3=zeros(1,4); %Limite Superieure

%On rentre manuellement les valeurs obetnue ? l'aide du programme
%"Transitoires" et des diff?rentes mesures ?ffectu?es
Metro1=[177 184 194 212];
Metro2=[169 176 181 196];
Metro3=[184 189 208 225];

%On affiche maintenant sur le m?me graphique les trois courbes
plot(Metro1, Metro2,'b')
hold on
grid on
plot(Metro1, Metro1,'r')
plot(Metro1, Metro3,'k')

%L?gende
l = legend('Limite inferieure de synchronisation','Battement de reference','Limite superieure de synchronisation',4)
set(l,'FontSize',14)
xlabel('BPM')
ylabel('BPM')
l
title('Evolution de la limite de synchronisation observee en fonction du temps')
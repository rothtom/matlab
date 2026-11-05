clear all
close all
clc

import VerbraucherLeistung.*

U0 = 20;
Ri = 10;

%Rl = [0:0.05:100]';
Rl = [0:0.1:100]';
% disp(size(Rl));

[Pl, eff] = VerbraucherLeistung(Ri, Rl, U0);
% disp(eff)

%% Grafiken anfangen
% initialisieren
figure;
% Wirkungsgrad ploten und stylen
plot(Pl, Ri ./ Rl, "linewidth", 2, "Color", "red");
% Achsen beschriften
xlabel("Widerstandsverhältnis Ri/Rl");
ylabel("Leistung im Verbraucher");
% zweite Y-Achse
yyaxis right;
% zweiten Graphen ploten und stylen
plot(eff, Ri ./ Rl, "LineWidth", 2, Color="blue");
ylabel("Wirkungsgrad in %");
%% Titel
title("Verbraucherleistung und Wirkungsgrad")
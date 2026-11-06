clear all;
close all;
clc;

%%
import invertAddierer.*
t = [0:1/2000:1]';
% in ms umrechnen
t = t/1000;


% b = 2pi / p

U1 = 5 * sin(t * 2 * pi * 1000) + 2.5;
U2 = 5 * sin(2 * t * 2 * pi * 1000) + 2.5;
U3 = 5 * sin(3 * t * 2 * pi * 1000) + 2.5;

Ui = [U1 U2 U3];

R =[10e3; 15e3; 20e3; 5e3];


Ua = invertAddierer(Ui, R);

%% Eingangsspannungen in plot 1 plotten
figure;
subplot(2, 1, 1);
plot(t, Ui);
% schön machen
title("Eingangsspannungen");
ylabel("Spannung in V");
xlabel("Zeit in ms");

% legende
legend("1 kHz", "2 kHz", "3 kHz");
hold on;

%% Ausgangsspannung in plot 2 Plotten
subplot(2, 1, 2);
plot(t, Ua);
%schön machen
title("Ausgangsspannung");
xlabel("Zeit in ms");
ylabel("Spannung in V");
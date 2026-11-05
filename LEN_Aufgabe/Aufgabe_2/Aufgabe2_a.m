clear all
close all
clc

%%
import invertAddierer.*

% Matrix Ui
% Spalten entspicht Eingangsspannung
% Zeilen entspricht einem anderen Zeitpunkt für Ui

Ui = ones(49)' * ones(49)
disp(size(Ui, 1));



% Spaltenvektor
R = [1:1:50]';
disp(size(R, 1));
Ua = invertAddierer(Ui, R);
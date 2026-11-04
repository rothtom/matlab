function [Pl, eff] = VerbraucherLeistung(Ri, Rl, U0)
% Funktion VerbraucherLeistung
% Autor             :  Tom Roth
% Erstellungsdatum  :  4.11.26
% Beschreibung      :  Findet den Wiederstand mit dem kleinsten Leistungsverlust
% Input             :  Skalar Ri (Dimension 1, 1);
%                      Vektor Rl (Dimension n, 1);
%                      Skalar U0 (Dimension 1, 1);
% Output            :  Vektor Pl (Dimension n, 1);
%                      Vektor eff (Dimension n, 1);


if (~isscalar(U0) || ~isscalar(Ri) || ~iscolumn(Rl))
    % Error message
    error("Die Dimensionen stimmen nicht überein!")
end

%% Berechnungen
% Leistungsberechnung
Pl = (power(U0, 2) ./ power((Ri + Rl), 2)) .* Rl

% Berechnung Wirkungsgrad (vektor)
eff = ((Rl ./ Ri) ./ (1 + (Rl + Ri))) .* 100

%% Max Effizienz
[M, index] = max(eff);
M = round(M, 2)

% Textausgabe
fprintf("Die maximale Leistung beträgt: %f W. \n" + ...
    "Der Wirkungsgrad an diesem Punkt beträgt %f%.\n", ...
    M, eff(index));


return
end


clear all
close all
clc


U0 = 5;
Ri = 10;
Rl = [1:1:5]';


[Pl, eff] = VerbraucherLeistung(Ri, Rl, U0)
function [Ua] = invertAddierer(Ui, R);
    % Funktion invertAddierer
    % Autor             : Tom Roth
    % Erstellungsdatum  : 6.11.26
    % Beschreibung      : Berechnet das Ausgangssignal an einem
    % invertierenden Addierer mit verschiedenen Eingangssignalen
    % Input             : Matrix Ui (Dimension m, n);
    %                     Vektor R (Dimension n+1, 1);
    % Output            : Vektor Ua (Dimension m, 1);


    % kontrollieren, ob R ein Spaltenvektor ist
    if ~iscolumn(R)
        error("Die Dimensionen stimmen nicht überein!");
    end

    % kontrollieren, ob die Anzahl der Zeilen von Ui und R stimmt
    if ((size(Ui, 2)) ~= (size(R, 1) - 1))
        error("Die Dimensionen stimmen nicht überein!")
    end
    
    Ua = zeros(1, size(Ui, 1))';

    RN = R(size(R, 1));
  
    % für jede Spalte
    for n = 1:size(Ui, 1)
        % für jede Zeile in der Spalte
        for m = 1:size(Ui, 2)
            % Summe der Eingangssignale
            disp(Ui(n, m));
            Ua(n) = Ua(n) + ((RN / R(m)) * Ui(n, m));
        end
    end
    Ua = Ua .* -1;
    return
end
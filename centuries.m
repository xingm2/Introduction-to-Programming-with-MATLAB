function slrn = centuries(yrs)
    slrn = '';
    if ~isscalar(yrs) || yrs ~= floor(yrs) || yrs <1 || yrs > 3000
        return;
    else
        if yrs <= 100
            slrn = 'I';
        else
            
            switch ceil(yrs / 100.0)
                case 2
                    slrn = 'II';
                case 3
                    slrn = 'III';
                case 4
                    slrn = 'IV';
                case 5
                    slrn = 'V';
                case 6
                    slrn = 'VI';
                case 7
                    slrn = 'VII';
                case 8
                    slrn = 'VIII';
                case 9
                    slrn = 'IX';
                case 10
                    slrn = 'X';
                case 11
                    slrn = 'XI';
                case 12
                    slrn = 'XII';
                case 13
                    slrn = 'XIII';
                case 14
                    slrn = 'XIV';
                case 15
                    slrn = 'XV';
                case 16
                    slrn = 'XVI';
                case 17
                    slrn = 'XVII';
                case 18
                    slrn = 'XVIII';
                case 19
                    slrn = 'XIX';
                case 20
                    slrn = 'XX';
                case 21
                    slrn = 'XXI';
                case 22
                    slrn = 'XXII';
                case 23
                    slrn = 'XXIII';
                case 24
                    slrn = 'XXIV';
                case 25
                    slrn = 'XXV';
                case 26
                    slrn = 'XXVI';
                case 27
                    slrn = 'XXVII';
                case 28
                    slrn = 'XXVIII';
                case 29
                    slrn = 'XXIX';
                case 30
                    slrn = 'XXX';
            end
        end
    end
end

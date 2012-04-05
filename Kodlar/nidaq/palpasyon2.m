sonuc = 0

while true

    dio = digitalio('nidaq','Dev1');
    addline(dio,0,'in');    
    portval = getvalue(dio);
    
    if (portval == sonuc)
        sonuc = not(sonuc)
        if portval == 1
            fprintf('birakti\n')
        else
            fprintf('basti\n')
        end
    end

end
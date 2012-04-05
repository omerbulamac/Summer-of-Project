sonuc = 0

while true

    dio = digitalio('nidaq','Dev1');
    addline(dio,0,'in');    
    portval = getvalue(dio);
    
    if (portval == sonuc)
        sonuc = not(sonuc)
        if portval == 1
            fprintf('býraktý\n')
        else
            fprintf('bastý\n')
        end
    end

end
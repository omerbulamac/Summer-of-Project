sonuc = 0;

while true

    dio = digitalio('nidaq','Dev1');
    addline(dio,0,'in');
    portval = getvalue(dio);
    
    if (portval == sonuc)
        sonuc = not(sonuc);
        if portval == 1
            im = imread('1.jpg');
            figure; imshow(im);
        else
           im = imread('2.jpg');    
           figure; imshow(im);
        end
    end

end


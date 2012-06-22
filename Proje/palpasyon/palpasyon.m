while true
    
    dio = digitalio('nidaq','Dev1');
    addline(dio,0,'in');
    portval = getvalue(dio);

    if portval == 0
        fprintf('basti\n')
    else
        fprintf('basili degil\n')
    end

end
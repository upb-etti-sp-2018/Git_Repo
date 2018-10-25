function x = reduce_amp(x)
    for index = 1:1:length(x)
        if x(index) > 0
           x(index) = x(index)/2;
        end
    end
function x = red_da(x)
    for index = 1:1:length(x)
        if x(index) < 0
            x(index) = -x(index);
        end
    end
end
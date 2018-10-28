function x = mod_amp(x)

for index = 1:1:length(x)
    
    if x(index) < 0
        x(index) = 2*x(index);
    end
end
        
    
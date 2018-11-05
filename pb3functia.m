function [medie, patrat, matricea] = pb3(v)
    medie = mean(real(v))
    patrat = v.^2
    matricea = v * (transpose(v))
end

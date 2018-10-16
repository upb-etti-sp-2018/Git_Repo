function [mean, squared, matrix] = functie(z)
  mean = mean(real(z))
  squared = z.^2
  matrix = z * (transpose(z))
  end
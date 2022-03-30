def sum_prod_diags(matrix)
  #your code here
  size = matrix.size
  sum_1_up = (-1..(size-2)).map { |i| matrix.map { |row| row[i+=1] }.compact.inject(:*) } # diagonal superior de la matriz
  sum_1_down = []
  for j in (1..(size-1))
    arr = []
    -1.downto(-(size-1)) { |i| arr << matrix[i][i-j] }
    sum_1_down << arr.compact.inject(:*)
  end
  sum_1 = (sum_1_down + sum_1_up).sum

  sum_2_up = (0..(size-1)).map { |i| matrix.map { |row| row[-(i+=1)] }.compact.inject(:*) }
  sum_2_down = []
  for j in (0..(size-2))
    arr = []
    -1.downto(-(size-1)) { |i| arr << matrix[i][-(i-j)] }

    sum_2_down << arr.compact.inject(:*)
  end
  sum_2 = (sum_2_down + sum_2_up).sum
  m = sum_1 - sum_2
    return m
end
def last_digit(lst)
  return 1 if lst == []

  result = 1
  size = lst.size
  (size-1).downto(0){ |i|
    exp = result if result < 4
    exp = result % 4 + 4 if result >= 4
    result = lst[i] ** exp
  }
  return result % 10
end
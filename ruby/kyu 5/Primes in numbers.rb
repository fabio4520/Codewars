require 'prime'
def prime_factors(n)
  arr = Prime.prime_division(n)
  arr.map { |row| row[1] == 1 ? "(#{row[0]})" : "(#{row[0]}**#{row[1]})" }.join
end
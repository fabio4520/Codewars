require 'prime'
def sumOfDivided(lst)
  # ...
  primes = []
  lst.each do |int|
    arr = (1..(int).abs).map { |i| i if (int).abs % i == 0 }.compact
    primes << (0..arr.length).map { |i| arr[i] if (Prime.each((int).abs).to_a).include?(arr[i]) }.compact
  end

  primes = primes.flatten.uniq
  result = (0..(primes.length-1)).map { |i| [primes[i], lst.map { |j| j if j % primes[i] == 0 }.compact.sum]}
  return result.sort
end
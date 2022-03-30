def f(s)
  #your code here
  t = ""
  for i in s.split("")
    t += i
    k = s.count(t) / t.length
    break if k > 1 && t.length > 1 && s == t * k
  end
  return t,k
end
def fibs(n)
  if n <= 0
    return 0
  elsif n == 1
    return 1
  else
    i = 2
    n_minus_2 = 0
    n_minus_1 = 1
    result = 0
    while i <= n do
      result = n_minus_2 + n_minus_1
      n_minus_2 = n_minus_1
      n_minus_1 = result
      i += 1
    end
    return result
  end
end

def fibs_rec(n)
  return 0 if n == 0
  return 1 if n == 1
  return fibs_rec(n-2) + fibs_rec(n-1)
end

puts fibs_rec(13)

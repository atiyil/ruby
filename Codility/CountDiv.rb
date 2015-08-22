def solution(a, b, k)
  n = a % k
  m = b % k
  #puts n,m
  if n == 0 or m == 0 or n > m
    return 1 + (b-a) / k
  else
    return (b-a) / k
  end
end

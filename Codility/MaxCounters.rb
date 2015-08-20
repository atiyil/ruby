def solution(n, a)
  counters = Array.new(n,0)
  #print counters
  i,maxi = 0
  while i < a.count
    if a[i] > n
      counters.fill(maxi)
    else
      counters[a[i]-1] += 1
    end
    maxi = counters.max
    i+=1
  end
  #print counters
  return counters
end

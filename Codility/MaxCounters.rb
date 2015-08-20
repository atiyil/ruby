def solution(n, a)
  counters = Array.new(n,0)
  #print counters
  maxi = 0
  againMaxCounters = false
  i = 0
  while i < a.count
    if !againMaxCounters and a[i] > n
      counters.fill(maxi)
      againMaxCounters = true
    elsif a[i] <= n
      counters[a[i]-1] += 1
      againMaxCounters = false
      if maxi < counters[a[i]-1]
          maxi = counters[a[i]-1]
      end
    end
    #print counters
    i+=1
  end
  #print counters
  return counters
end


def solution(a)
  i = 0
  min = 10000
  minSum = 20000
  index = 0
  minSlice = 1000000000
  successiveSum = 0
  while i < a.count 
  #find minimum value in the array
    if a[i] < min
      min = a[i]
    end
    #find minimum sum in the array
    if i+1 < a.count and a[i].to_i + a[i+1].to_i < minSum
      minSum = a[i].to_i + a[i+1].to_i
      index = i
    end
    i += 1
  end
  puts min, minSum
  return index
  
end

def solution(a)
  i = 2
  index = 0
  sliceSum = a[0].to_i + a[1].to_i
  sliceAvg = sliceSum.to_f / 2
  sliceLen = 2
  #average = a.inject(:+).to_f / a.count #average of the array
  while i < a.count 
    #find minimum average
    if index + sliceLen >= i 
      if (a[i].to_i + sliceSum).to_f / (sliceLen + 1) < sliceAvg
        sliceSum += a[i].to_i 
        sliceLen += 1
        sliceAvg = sliceSum.to_f / sliceLen
      end
      if a[i] < a[i - 2] and (a[i].to_i + a[i-1].to_i).to_f / 2 < sliceAvg
        sliceSum = a[i].to_i + a[i-1].to_i
        sliceLen = 2
        sliceAvg = sliceSum.to_f / sliceLen
        index = i - 1
      end
    elsif (a[i].to_i + a[i-1].to_i).to_f / 2 < sliceAvg
        sliceSum = a[i].to_i + a[i-1].to_i
        sliceLen = 2
        sliceAvg = sliceSum.to_f / sliceLen
        index = i - 1
    end
    i += 1
  end
  #puts sliceSum, sliceAvg, average
  return index
end

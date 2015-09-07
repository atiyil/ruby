def solution(a)
  i = 2
  index = 0
  sliceSum = a[0].to_i + a[1].to_i
  sliceAvg = sliceSum.to_f / 2
  sliceLen = 2
  #average = a.inject(:+).to_f / a.count #average of the array
  while i < a.count 
    #check if next element is adjacent to the slice
    if index + sliceLen >= i 
      #add next element to the slice and compare the averages
      if (a[i].to_i + sliceSum).to_f / (sliceLen + 1) < sliceAvg
        sliceSum += a[i].to_i 
        sliceLen += 1
        sliceAvg = sliceSum.to_f / sliceLen
      end
      #whether the next 2 elements form a minimum slice, compare the averages
      if a[i] < a[i - 2] and a[i - 1] < a[i - 2] and (a[i].to_i + a[i-1].to_i).to_f / 2 < sliceAvg
        sliceSum = a[i].to_i + a[i-1].to_i
        sliceLen = 2
        sliceAvg = sliceSum.to_f / sliceLen
        index = i - 1
      end
      #whether the next 3 elements form a minimum slice, compare the averages
      if (a[i].to_i + a[i-1].to_i + a[i-2].to_i).to_f / 3 < sliceAvg
        sliceSum = a[i].to_i + a[i-1].to_i + a[i-2].to_i
        sliceLen = 3
        sliceAvg = sliceSum.to_f / sliceLen
        index = i - 1
      end
    #check if next 2 elements are not adjacent to the slice and form a min slice
    else
        if (a[i].to_i + a[i-1].to_i).to_f / 2 < sliceAvg
        sliceSum = a[i].to_i + a[i-1].to_i
        sliceLen = 2
        sliceAvg = sliceSum.to_f / sliceLen
        index = i - 1
        end
    #check if next 3 elements are not adjacent to the slice and form a min slice
        if (a[i].to_i + a[i-1].to_i + a[i-2].to_i).to_f / 3 < sliceAvg
        sliceSum = a[i].to_i + a[i-1].to_i + a[i-2].to_i
        sliceLen = 3
        sliceAvg = sliceSum.to_f / sliceLen
        index = i - 2
        end
    end
    #print "i:"+i.to_s+" index:"+index.to_s+" sliceSum:"+sliceSum.to_s+" sliceLen:"+sliceLen.to_s
    #puts
    i += 1
  end
  return index
end

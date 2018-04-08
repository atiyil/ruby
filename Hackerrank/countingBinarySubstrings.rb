def counting(s)
  sum = 0
  left = 0
  right = 1
  arr = s.split('')
  arr.each_index {|i| 
    if i > 0 then  
      if arr[i-1] != arr[i] then
        sum += [left,right].min; 
        left = right;
        right = 1
      else right += 1
      end
    end
  }
  return sum + [left,right].min
end

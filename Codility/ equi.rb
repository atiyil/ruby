def solution(a)
  sum1 = 0
  sum2 = 0
  index = 1
  while index < a.length
    sum2 += a[index]
    index += 1
  end
  #puts "sum2: " + sum2.to_s
  index = 0
  while index < a.length
    #puts "index: " + index.to_s + " sum2: " + sum2.to_s
    if (sum1 == sum2)
      return index
    elsif index < (a.length-1)
      sum1 += a[index]
      sum2 -= a[index+1]
    end
    index += 1
  end
  return -1
end

a = [1,2,3,6]
puts "a: " + a.to_s
solution(a)

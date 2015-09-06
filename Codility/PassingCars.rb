#https://codility.com/programmers/lessons/3
def solution(a)
  if a.count(0) == 0 or a.count(1) == 0
    return 0
  end
  start = a.index(0)
  i = start
  numberOfPassingCars = 0
  incrementValue = 0
  while i < a.count
    if a[i] == 0
        incrementValue += 1
    elsif a[i] == 1
        numberOfPassingCars += incrementValue
    end
    i += 1
  end
  #print numberOfPassingCars
  if numberOfPassingCars > 1000000000
    return -1
  else 
    return numberOfPassingCars
  end
end

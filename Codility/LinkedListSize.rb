// given an array of integers 'a', it returns the length of the linked list
// composed by following the values at the index. -1 is terminating value.
// only correctness!!

def solution(a)
  x = 0
  y = 1
  while a[x] != -1
    x = a[x]
    y += 1
  end
  return y
end

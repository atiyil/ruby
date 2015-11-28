https://codility.com/programmers/task/prefix_set
def solution(a)
  b = a.uniq
  n = b.size - 1
  max = temp = 0
  (0..n).each do |i|
    temp = a.index(b[i])
    if max < temp
      max = temp
    end
  end
  return max
end

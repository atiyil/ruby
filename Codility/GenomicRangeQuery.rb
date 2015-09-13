#https://codility.com/demo/take-sample-test/genomic_range_query/
def solution(s, p, q)
  i = 0
  result = []
  while i < p.count
    x = s[p[i]..q[i]]
    #puts x
    if x.include? "A"
      result[i] = 1
    elsif x.include? "C"
      result[i] = 2
    elsif x.include? "G"
      result[i] = 3
    elsif x.include? "T"
      result[i] = 4
    end
    i += 1
  end
  return result
end


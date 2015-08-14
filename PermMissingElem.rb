def solution(a)
  a.sort!
  index = 0
  while index < a.length
    if a[index] != (index + 1)
        return (index+1)
    end
    index += 1
  end
end

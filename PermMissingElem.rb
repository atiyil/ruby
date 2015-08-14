def solution(a)
  if a.length == 0
      return 1
  elsif a.length == 1
    if a[0] != 1
      return 1
    else
        return 2
    end
  end
  a.sort!
  index = 0
  while index < a.length
    if a[index] != (index + 1)
        return (index+1)
    end
    index += 1
  end
  return (index+1)
end

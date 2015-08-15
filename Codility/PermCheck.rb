def solution(a)
    a.sort!
    if a.last == a.count
        return 1
    else
        return 0
    end
end

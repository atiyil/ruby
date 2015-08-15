def solution(a)
    if a.uniq.count != a.count
        return 0
    end
    a.sort!
    if a.last == a.count
        return 1
    else
        return 0
    end
end

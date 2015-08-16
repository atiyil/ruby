def solution(a)
    a.uniq!
    a.sort!
    i = 0
    counter = 1
    while i < a.count
        if a[i] < 1 
            i += 1
            next
        elsif a[i] > counter
            return counter
        end
        i += 1
        counter += 1
    end
    if a.last > 0 and i = a.count
        return i + 1
    else 
        return 1
    end
end

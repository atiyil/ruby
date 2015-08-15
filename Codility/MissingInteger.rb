def solution(a)
    a.uniq!
    a.sort!
    #print a
    i = 0
    while i < a.count
        if a[i] != i + 1
            return i + 1
        end
        i += 1
    end
end

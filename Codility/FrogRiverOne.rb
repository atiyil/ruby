def solution(x, a)
    b = a.uniq #find the index of last element in b
    if b.count == x
        return a.index(b.last)
    else 
        return -1
    end
end

ef solution(a)
    sum1 = a[0] #sum of the first part
    sum2 = 0 #sum of the second part
    index = 1 #array index
    minimalDifference = 100000000 #minimal difference between sum1 and sum2. ma$
    while index < a.length #compute sum2 for a[1..n-1]
        sum2 += a[index]
        index += 1
    end
    puts "a: " + a.to_s + " sum1: " + sum1.to_s + " sum2: " + sum2.to_s
    index = 1
    while index < a.length
        difference = (sum1-sum2).abs
        if minimalDifference > difference
            minimalDifference = difference
        end
        sum1 += a[index]
        sum2 -= a[index]
        index += 1
    end
    puts "a: " + a.to_s + " sum1: " + sum1.to_s + " sum2: " + sum2.to_s + " min$
    return minimalDifference
end

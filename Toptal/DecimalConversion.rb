# Devise a function that takes an input 'n' (integer) and returns a string that is the
# decimal representation of the number grouped by commas after every 3 digits. Do not 
# solve the task using a built-in formatting function that can accomplish the whole 
# task on its own. 

# Assume: 0 <= n < 1000000000 

# 1 -> "1" 
# 10 -> "10" 
# 100 -> "100" 
# 1000 -> "1,000" 
# 10000 -> "10,000" 
# 100000 -> "100,000" 
# 1000000 -> "1,000,000" 
# 35235235 -> "35,235,235" 
# 999999999 -> “999,999,999"

def toDecimal(a)
  puts "input is " + a.to_s
  b = a.to_s.reverse
  i = 0
  result = ""
  while i < b.size
    x = b[i,3]
    x = x + ","
    result += x
    i += 3
  end
  if result[result.size-1] == ","
  	result.chop!
  end
  puts "result is " + result.reverse
end

a = 100000000
toDecimal(a)

# Convert a string to an integer
def convert(str)
  num = 0
  arr = str.split('')
  arr.each {|e| num = num * 10 + (e.ord - 48)}
  return num 
end

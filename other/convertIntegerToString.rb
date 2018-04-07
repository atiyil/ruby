# convert an integer to a string
def convert(num) 
  str = ''
  while(num > 0) do 
    str = str + ((num % 10)+48).chr
    num = num / 10 
  end
  return str 
end

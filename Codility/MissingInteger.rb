# find the smallest positive integer missing in a given array of integers 'a'

def solution(a)
  a.select! {|x| x > 0}
  counter = Array.new(a.length) {|x| x+1}
  b = (counter - a).first
  if b == nil then return (a.length + 1)
  	else return b
  	end
end

// count number of digit '1' in positive numbers up to 'n'
// only correctness!

def solution(n)
  if n == 0 then return 0 end
  a = Array.new(n) {|x| x+1}
  b = []
  a.each {|x| b.push(x.to_s.split(//))}
  return b.flatten.count('1')
end

// create a new number by shuffling the digits of integer 'a' as one from beginning one from end recursively
// only correctness!!

def solution(a)
  aa = a.to_s.split(//)
  b = []
  aa.each_index {|x| x <= aa.length+1 ? (
    b.push(aa[x]);
    b.push(aa[aa.length-x-1])) : 0}
  c = b.slice(0,aa.length)
  return c.join.to_i
end

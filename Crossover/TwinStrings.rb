# Two strings, a and b, are said to be twins only if they can be made equivalent by performing 
# some number of operations on one or both strings. There are two possible operations:

# SwapEven: Swap a character at an even-numbered index with a character at another even-numbered index.
# SwapOdd: Swap a character at an odd-numbered index with a character at another odd-numbered index.
# For example, a = "abcd" and b = "cdab" are twins because we can make them equivalent by 
# performing operations. Alternatively, a = "abcd" and b = "bcda" are not twins 
# (operations do not move characters between odd and even indices), 
# and neither are a = "abc" and b = "ab" (no amount of operations will insert a 'c' into string b).

# Complete the twins function in the editor below. It has two parameters:
# An array of n strings named a.
# An array of n strings named b.
# The function must return an array of strings where each index i (0 ≤ i < n) contains the string 
# Yes if ai and bi are twins or the string No if they are not.

# Input Format:
# The internal test cases read the following input from stdin and pass it to the function:
# The first line contains an integer, n, denoting the number of elements in a.
# Each line i of the n subsequent lines (where 0 ≤ i < n) contains a string describing ai.
# The next line contains an integer, n, denoting the number of elements in b.
# Each line i of the n subsequent lines (where 0 ≤ i < n) contains a string describing bi.

# Constraints:
# 1 ≤ n ≤ 10^3
# 1 ≤ lengths of ai, bi ≤ 100
# ai and bi are not guaranteed to have the same length.
# Strings ai and bi contain lowercase letters only (i.e., a through z).

# Output Format:
# The function must return an array of strings where each index i (0 ≤ i < n) contains the string 
# Yes if ai and bi are twins or the string No if they are not.

# Sample Input :
# 2
# cdab
# dcba
# 2
# abcd
# abcd

# Sample Output :
# Yes
# No

# Explanation :
# Given a = ["cdab", "dcba"] and b = ["abcd", "abcd"], we process each element like so:
# a0 = "cdab" and b0 = "abcd": We store Yes in index 0 of the return array because 
# a0 = "cdab" → "adcb" → "abcd" = b0.
# a1 = "dcba" and b1 = "abcd": We store No in index 1 of the return array because no amount of 
# operations will move a character from an odd index to an even index, so the two strings will never be equal.

# We then return the array ["Yes", "No"] as our answer.
# For example:
# Input	Result
# 2			Yes
# cdab	No
# dcba
# 2
# abcd
# abcd
# Complete the function below.

# DO NOT MODIFY anything outside the below function
def twins(a, b)
	
	rs=[]
	a.each_index {|x| ai = a[x].split(//); 
		bi = b[x].split(//);
		#print ai,bi;
		if ai.length != bi.length then rs.push("No") 
		else
			aieven=[]
			aiodd=[]
			ai.each_index {|y| if y.even? then aieven.push(ai[y]) else aiodd.push(ai[y]) end};
			bieven=[]
			biodd=[]
			bi.each_index {|y| if y.even? then bieven.push(bi[y]) else biodd.push(bi[y]) end};
			if aieven.sort! == bieven.sort! && aiodd.sort! == biodd.sort! then rs.push("Yes") 
				else rs.push("No") end;
			#print aieven,aiodd,bieven,biodd;
		end;
	}
	return rs;

end
# DO NOT MODIFY anything outside the above function

# DO NOT MODIFY THE CODE BELOW THIS LINE!
_a_cnt = Integer(gets)
_a_i=0
_a = Array.new(_a_cnt)

while (_a_i < _a_cnt)
  _a_item = gets.to_s.strip;
  _a[_a_i] = (_a_item)
  _a_i+=1
end

_b_cnt = Integer(gets)
_b_i=0
_b = Array.new(_b_cnt)

while (_b_i < _b_cnt)
  _b_item = gets.to_s.strip;
  _b[_b_i] = (_b_item)
  _b_i+=1
end

res = twins(_a, _b);
for res_i in res do
  puts res_i
end

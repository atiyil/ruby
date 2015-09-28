#https://codility.com/programmers/task/frog_jmp
def solution(x, y, d)
    result = (((y-x).to_f)/d).ceil
    return result
end

def fibs(n)
  result = []
  0..n.times do |i|
    if result.length < 2
      result << i
    else
      result << result[-1] + result[-2]
    end
  end
  result
end

def fibs_rec(n)
  #base cases: n = 0 and n == 1
  if n == 0
    return [0]
  elsif n == 1
    return [0, 1]
  else
    #call fibs_rec on n - 1 to set result, then append new result
    result = fibs_rec(n - 1)
    result << fibs_rec(n - 2).last + fibs_rec(n - 1).last
  end
  result
end

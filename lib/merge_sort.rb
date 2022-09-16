def merge_sort(x)
  result = []
  #base case: return if array length == 1
  if x.length == 1
    result.push(x[0])
  else
    #if length > 1, call merge on left and right halves
    y = merge_sort(x[0..(x.length - 1) / 2])
    z = merge_sort(x[(x.length + 1) / 2..-1])
    #compare sorted halves, merge in smallest values
    until y.empty? || z.empty?
      y[0] <= z[0] ? result.push(y.shift) : result.push(z.shift)
    end
    #append remaining sorted half
    y.empty? ? result += z : result += y
  end
  p result
  result
end


arr = [6,4,5,3,5,7,9]
p merge_sort(arr)
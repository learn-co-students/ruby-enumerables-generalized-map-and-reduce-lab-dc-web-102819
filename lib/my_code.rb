def map(source_array)
  return_array = []
  count = 0 
  while count < source_array.length 
  return_array.push(yield (source_array[count]))
  count = count + 1 
end
return_array
end

def reduce(source_array, starting_point = nil)
  if starting_point 
    sum = starting_point 
    count = 0 
  else 
    sum = source_array[0]
    count = 1 
  end 
  while count < source_array.length 
  sum = yield(sum, source_array[count])
  count = count+1 
end 
sum
end
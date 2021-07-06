def map(source_array)
  new_array = []
  i = 0
  while i < source_array.length
    result = yield(source_array[i])
    new_array << result
    i +=1
  end
  return new_array
end

def reduce(source_array,starting_value=nil)
  i = 0

  if starting_value
    store_value = starting_value
  else
    store_value = source_array[i]
    i += 1
  end

  while i < source_array.length
    store_value = yield(store_value, source_array[i])
    i += 1
  end
  return store_value
end

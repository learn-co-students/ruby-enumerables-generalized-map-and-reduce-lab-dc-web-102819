# Your Code Here
def map(arr)
  mapped_arr = Array.new
  index = 0
  while index < arr.size do
    mapped_arr.push(yield(arr[index]))
    index += 1
  end
  mapped_arr
end

def reduce(arr, starting_point = 0)
  result = starting_point
  index = 0

  while index < arr.size do
    result = yield(result, arr[index])
    index += 1
    p result
  end
  if (result == 0)
    return true
  end
  result
end
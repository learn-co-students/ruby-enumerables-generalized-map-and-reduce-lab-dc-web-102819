# Your Code Here
def map(array)
  newArray = []
  i = 0
  while i < array.length do
    newArray.push(yield(array[i]));
    i += 1;
  end
  newArray
end

def reduce(array, starting=nil)
  if starting
    output = starting
  else
    output = 0
  end
  i = 0
  while i < array.length {
    output = yield(output, array[i])
    i += 1
  }
  output
end
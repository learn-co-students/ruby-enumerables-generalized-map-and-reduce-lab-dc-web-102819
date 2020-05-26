# Your Code Here

def map(block)
  new = []
  i = 0
  while i < block.length
    new.push(yield(block[i]))
    i += 1
  end
  new
end


def reduce(block, special_condition =nil)
  
  if special_condition
    accumulate_total = special_condition
    i = 0
  else
    accumulate_total = block[0]
    i = 1
  end
  while i < block.length
    accumulate_total = yield(accumulate_total, block[i])
    i += 1
  end
  accumulate_total
end
    
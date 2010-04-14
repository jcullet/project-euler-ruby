max = 4000000
sum = 0
prev = 0
curr = 1

while curr < max
  prev, curr = curr, prev + curr
  sum = sum + curr if curr % 2 == 0
end

puts sum

  

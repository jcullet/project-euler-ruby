def sum_of_squares(max)
  (1..max).inject { |sum, n| sum + (n*n) }
end

def square_of_sums(max)
  sum = (1..max).inject { |sum, n| sum + n }
  sum * sum
end

puts square_of_sums(100) - sum_of_squares(100)

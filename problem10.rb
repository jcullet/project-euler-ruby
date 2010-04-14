def generate_primes(max)
  primes = (0..max).to_a
  primes[0] = primes[1] = nil

  (2..Math.sqrt(max)).each do |i|
    if primes[i]
      (i*i).step(max, i) do |j|
        primes[j] = nil
      end
    end
  end
 
  primes.compact
end

limit = 2000000
primes = generate_primes(limit)
puts primes.inject { |sum, n| sum + n }

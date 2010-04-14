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

number_to_factor = 600851475143
primes = generate_primes(Math.sqrt(number_to_factor))
prime_factors = primes.select { |x| number_to_factor % x == 0 }
puts prime_factors.max

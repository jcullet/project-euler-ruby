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

def seive_upper_bound(n)
  n * Math.log(n) + n*Math.log(Math.log(n))
end

number_of_primes = 10001
primes = generate_primes(seive_upper_bound(number_of_primes))
puts primes[number_of_primes - 1]

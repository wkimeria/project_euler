# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

def sum_primes_sieve(upper_limit, short_circuit = true)
  all_nums = (2..upper_limit).to_a
  for i in 2..upper_limit/2
    if (all_nums.include?(i))
      prev_length = all_nums.length
      all_nums = all_nums.reject { |x| (x != i && x % i == 0) }
      current_length = all_nums.length
      return all_nums.inject(:+) if short_circuit == true && prev_length == current_length
    end
  end
  all_nums.inject(:+)
end

start_time = Time.now
upper_limit = 2000000
result = sum_primes_sieve(upper_limit)
end_time = Time.now
time = end_time - start_time
puts "Short circuit: Sum = #{result} time taken = #{time}"

#Short circuit: Sum = 142913828922 time taken = 14.500432

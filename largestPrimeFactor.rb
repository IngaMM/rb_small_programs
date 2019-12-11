largestPrimeFactor = 1
number = 600851475143
i = 2
j = 2
isPrime = true
while i <= number
  while j < i
    if i%j == 0
      isPrime = false
    end
    j = j+1
  end
  if isPrime == true and number%i == 0
    number = number/i
    largestPrimeFactor = i
  end
  i = i+1
  isPrime = true
  j = 2
end

puts largestPrimeFactor

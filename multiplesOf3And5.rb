i = 1
arr = []
while i < 1000
  if (i%3 == 0 or i%5 == 0)
    arr.push i
  end
  i = i + 1
end

sum = 0

arr.each do |item|
  sum = sum + item
end

puts sum

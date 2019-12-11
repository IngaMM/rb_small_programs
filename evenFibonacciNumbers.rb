arr = [1, 2]
while arr.last < 4000000
    arr.push arr[arr.length-1]+arr[arr.length-2]
end

arr.pop

sum = 0

arr.each do |item|
  if item%2 == 0
    sum = sum + item
  end
end

puts sum

def bubble_sort(arr)

  swapped = true
  nmax = arr.length
  while swapped == true do
    swapped = false
    i = 0
    n = 0
    while i < nmax-1 do
      if arr[i] > arr[i+1] then
        arr[i], arr[i+1] = arr[i+1], arr[i]
        swapped = true
        n = i+1
      end
      i += 1
    end
    nmax = n
  end
  return arr

end

p bubble_sort([4,3,0,2,2,78])


def bubble_sort_by(arr)

  swapped = true
  nmax = arr.length
  while swapped == true do
    swapped = false
    i = 0
    n = 0
    while i < nmax-1 do
      left = arr[i]
      right = arr[i+1]
      if yield(left,right) > 1 then
        arr[i], arr[i+1] = arr[i+1], arr[i]
        swapped = true
        n = i+1
      end
      i += 1
    end
    nmax = n
  end
  return arr


end

p (bubble_sort_by(["hi","hello","hey"]) do |left,right|
   left.length - right.length
 end)

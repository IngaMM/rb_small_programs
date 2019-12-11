def merge_sort(arr)
  if arr.length > 1
    sub_arr1 = arr[0..arr.length/2-1]
    sub_arr2 = arr[arr.length/2..-1]
    sub_arr1 = merge_sort(sub_arr1)
    sub_arr2 = merge_sort(sub_arr2)
    arr = []
    while (sub_arr1.length != 0 || sub_arr2.length != 0)
      if sub_arr1.length != 0 && sub_arr2.length == 0
        arr << sub_arr1.shift(1)
      elsif sub_arr1.length == 0 && sub_arr2.length != 0
        arr << sub_arr2.shift(1)
      else
        if sub_arr1[0] <= sub_arr2[0]
          arr << sub_arr1.shift(1)
        else
          arr << sub_arr2.shift(1)
        end
      end
    end
  end
  return arr.flatten

end

p merge_sort([20, 2, 1, 6, 9, 15, 2, 13, 99])

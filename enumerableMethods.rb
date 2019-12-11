#!/usr/bin/ruby
module Enumerable
  def my_each
    i = 0
    while i<self.length do
      yield(self[i])
      i +=1
    end
    return self
  end

  def my_each_with_index
    i = 0
    while i<self.length do
      yield(self[i], i)
      i +=1
    end
    return self
  end

  def my_select
    arr_new = []
    self.my_each do |item|
      if yield(item) == true
        arr_new.push(item)
      end
    end
    return arr_new
  end

  def my_all?
    bool = true
    self.my_each do |item|
      if yield(item) == false
        bool = false
      end
    end
    return bool
  end

  def my_any?
    bool = false
    self.my_each do |item|
      if yield(item) == true
        bool = true
      end
    end
    return bool
  end

  def my_none?
    bool = true
    self.my_each do |item|
      if yield(item) == true
        bool = false
      end
    end
    return bool
  end

  def my_count
    count = 0
    self.my_each do |item|
      if yield(item) == true
        count += 1
      end
    end
    return count
  end

  def my_map
    arr_new = []
    self.my_each do |item|
      arr_new.push(yield(item))
    end
    return arr_new
  end

  def my_map_proc(&my_proc)
    arr_new = []
    self.my_each do |item|
      arr_new.push(my_proc.call(item))
    end
    return arr_new
  end

  def my_inject
    yield(0,1) == 0 ? result = 1 : result = 0 # multiplication or addition
    self.my_each do |item|
      result = yield(result, item)
    end
    return result
  end
end

def multiply_els(arr)
  arr.my_inject {|result, item| result*item}
end

#arr = [1, 3, 9, 5, 3]

#p arr.map {|item| item*2}

#my_proc = Proc.new {|item| item*2}
#p arr.my_map_proc(&my_proc)

#p arr.my_map(&my_proc)

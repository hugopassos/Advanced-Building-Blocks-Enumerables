# frozen_string_literal: true

module Enumerable
  def my_each
    i = 0
    while i < length do
      yield self[i]
      i += 1
    end
  end

  def my_each_with_index
    i = 0
    while i < length do
      yield i, self[i]
    end
  end

  def my_select
    array = []
    i = 0
    while i < length do
      if yield(self[i])
        array << self[i]
      end
      i += 1
    end
    array
  end

  def my_all?
    all_true = true
    i = 0
    while i < length do
      unless yield(self[i])
        all_true = false
      end
      i += 1
    end
    all_true
  end

  def my_any?
    any_true = false
    i = 0
    while i < length do
      if yield(self[i])
        any_true = true
      end
      i += 1
    end
    any_true
  end

  def my_none?
    all_false = true
    i = 0
    while i < length do
      if yield(self[i])
        all_false = false
      end
      i += 1
    end
    all_false
  end

  def my_count
    return count unless block_given?
    count = 0
    i = 1
    while i <= length do
      yield 1
      count += 1
      i += 1
    end
    count
  end

  def my_map
    array = []
    i = 0
    while i < length do
      array << yield(self[i])
      i += 1
    end
    array
  end

  def my_inject(sum=0)
    i = 0
    while i < length do
      sum = yield(sum, self[i])
      i += 1
    end
    sum
  end
end

def multiply_els(array)
  return array.my_inject(1){|x, y| x * y}
end

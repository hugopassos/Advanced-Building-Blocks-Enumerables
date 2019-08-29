# frozen_string_literal: true

module Enumerable
  def my_each
    for i in 0...self.length
      yield self[i]
    end
  end

  def my_each_with_index
    for i in 0...self.length
      yield i, self[i]
    end
  end

  def my_select
    array = []
    for i in self
      if yield(i)
        array << i
      end
    end
    array
  end

  def my_all?
    all_true = true
    for i in self
      if !yield(i)
        all_true = false
      end
    end
    all_true
  end

  def my_any?
    any_true = false
    for i in self
      if yield(i)
        any_true = true
      end
    end
    any_true
  end
end

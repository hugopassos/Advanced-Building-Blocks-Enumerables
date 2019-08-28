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

  
end

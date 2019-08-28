# frozen_string_literal: true

module Enumerable
  def my_each
    for i in 0...self.length
      yield self[i]
    end
  end
end

# frozen_string_literal: true

require_relative "what_should_i_eat/version"
require_relative "what_should_i_eat/printing"
require_relative "what_should_i_eat/get_data"


module WhatShouldIEat
  class Error < StandardError; end
  # Your code goes here...
  def self.run
    recipe = GetData.get
    PrintStuff.print(recipe)
  end

  
end

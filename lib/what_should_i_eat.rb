# frozen_string_literal: true

require_relative "what_should_i_eat/version"
require_relative "what_should_i_eat/printing" 
require 'http'

module WhatShouldIEat
  class Error < StandardError; end
  # Your code goes here...
  result = HTTP.get('https://www.edamam.com/search?type=Feeds').to_s
  recipes = JSON.parse(result)
end

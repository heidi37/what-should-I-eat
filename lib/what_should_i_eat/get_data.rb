# frozen_string_literal: true

require 'http'
require 'json'

module WhatShouldIEat
  module GetData
    def self.get
        data = HTTP.get('https://www.edamam.com/search?type=Feeds')
        json = JSON.parse(data)

      "#{json.first['items'].first['label']} - #{json.first['items'].first['url']}"
    end
  end
end

#   puts recipes.first['items'].first['label']
#   puts recipes.first['items'].first['url']
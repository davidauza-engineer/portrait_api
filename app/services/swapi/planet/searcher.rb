# frozen_string_literal: true

module Swapi
  module Planet
    class Searcher < Swapi::Base
      string :name

      def execute
        HTTParty.get("#{BASE_URL}/planets?search=#{name}")
      end
    end
  end
end

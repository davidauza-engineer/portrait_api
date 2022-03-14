# frozen_string_literal: true

module Swapi
  module Planet
    class Implementation < Swapi::Implementation
      def search(**params)
        planets = ::Swapi::Planet::Searcher.run!(name: params[:name])['results']
        ::Swapi::Planet::Builder.new(entities: planets).build
      end
    end
  end
end

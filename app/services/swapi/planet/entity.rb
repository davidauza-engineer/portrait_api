# frozen_string_literal: true

module Swapi
  module Planet
    class Entity
      attr_reader :name, :rotation_period, :orbital_period, :diameter, :climate, :gravity, :terrain,
                  :surface_water, :population

      def initialize(entity)
        @name = entity['name']
        @rotation_period = entity['rotation_period']
        @orbital_period = entity['orbital_period']
        @diameter = entity['diameter']
        @climate = entity['climate']
        @gravity = entity['gravity']
        @terrain = entity['terrain']
        @surface_water = entity['surface_water']
        @population = entity['population']
      end
    end
  end
end

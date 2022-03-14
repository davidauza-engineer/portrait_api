# frozen_string_literal: true

module Swapi
  module Planet
    class Builder
      def initialize(entities:)
        @entities = entities
      end

      def build
        entities.map { |entity| ::Swapi::Planet::Entity.new(entity) }
      end

      private

      attr_reader :entities
    end
  end
end

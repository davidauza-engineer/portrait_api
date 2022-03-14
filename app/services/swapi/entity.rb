# frozen_string_literal: true

module Swapi
  class Entity
    delegate :search, to: :implementation

    def initialize(name:)
      @name = name
      @factory = Factory.new(entity_name: name)
      @implementation = factory.implementation(factory: factory)
    end

    private

    attr_reader :factory, :implementation
  end
end

# frozen_string_literal: true

module Swapi
  class Implementation
    def initialize(factory:)
      @factory = factory
    end

    def search
      raise NotImplementedError
    end
  end
end

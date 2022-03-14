# frozen_string_literal: true

module Swapi
  class Factory
    MODELS = %i[implementation].freeze

    def initialize(entity_name:)
      @entity_name = entity_name
    end

    MODELS.each do |model|
      define_method model do |attributes|
        build_model(model, attributes)
      end
    end

    private

    attr_reader :entity_name

    def build_model(model, attributes = {})
      get_class_for_model(model).new(**attributes)
    end

    def get_class_for_model(model)
      "Swapi::#{entity_name.underscore.classify}::#{model.to_s.classify}".constantize
    end
  end
end

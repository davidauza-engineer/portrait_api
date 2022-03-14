# frozen_string_literal: true

module V1
  module Swapi
    class PlanetsController < ApplicationController
      def index
        render json: {
          data: ::Swapi::Entity.new(name: 'Planet').search(name: search_params[:name])
        }, status: :ok
      rescue StandardError => e
        render json: { error: { code: 500, message: e.message } }, status: :internal_server_error
      end

      private

      def search_params
        params.require(:planet).permit(:name)
      rescue StandardError
        { name: '' }
      end
    end
  end
end

module Api
  module V1
    class CarriersController < ApplicationController
      def index
        @carriers = Carrier.all
      end
    end
  end
end

require_dependency "wungine/application_controller"
require 'wungine/wunderground'

module Wungine
  class WeatherController < ApplicationController
    def index
    end

    def show
      @weather = Wunderground.get_conditions_by_zip(opts = { zip: params[:weather][:zip] })
    end
  end
end

require 'hashie'
module Wungine
  class Weather < Hashie::Dash
    property :city
    property :country
    property :temp_f
    property :temp_c
    property :feels_like_f
    property :feels_like_c
    property :weather
    property :icon

    def get_online_rental
      temp_c < 1 ? true : false
    end

  end
end
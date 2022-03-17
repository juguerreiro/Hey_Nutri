class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @cookers = Cooker.all

    @markers = @cookers.geocoded.map do |cooker|
      {
        lat: cooker.latitude,
        lng: cooker.longitude,
        info_window: render_to_string(partial: "info_window", locals: { cooker: cooker })
      }
    end
  end
end

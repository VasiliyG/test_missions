class HomeController < ApplicationController
  def index

    if params[:filter].present?
      @adverts = Advert.where('price > ?', params[:filter])
    else
      @adverts = Advert.all
    end

    temp = Advert.maximum(:price)
    @max = temp ? temp-1 : 1
  end
end

require 'cgi'
class MapController < ApplicationController

  def show
    @events = Event.all
  end

end

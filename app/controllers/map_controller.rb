require 'cgi'
class MapController < ApplicationController

  before_action  do
      if @current_account.nil?
        redirect_to welcome_path
      end
    end

  def show
    @events = Event.all
  end

end

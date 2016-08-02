require 'cgi'

class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find_by id: params[:id]
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new
    @event.description = params[:event][:description]
    @event.buyer = params[:event][:buyer]
    @event.contact_person = params[:event][:contact_person]
    @event.phone = params[:event][:phone]
    @event.email = params[:event][:email]
    @event.website = params[:event][:website]
    @event.date = params[:event][:date]
    @event.time_of_performance = params[:event][:time_of_performance]
    @event.location = params[:event][:location]
    @event.performance_type = params[:event][:performance_type]
    @event.performance_length = params[:event][:performance_length]
    @event.other_type = params[:event][:other_type]
    @event.ticket_price = params[:event][:ticket_price]
    @event.expected_attendance = params[:event][:xpected_attendance]
    @event.indoor_outdoor = params[:event][:indoor_outdoor]
    @event.performance_price = params[:event][:performance_price]

    event_location = @event.location

    results = JSON.parse(Http.get("http://locationiq.org/v1/search.php?key=5854c01d06bf4833124d&format=json&q=#{CGI::escape(event_location)}").body)


    if results.any?
      @event.latitude = results.first["lat"]
      @event.longitude  = results.first["lon"]
    end
    
     if @event.save
       redirect_to root_path, notice: "New Event Added"
     else
       flash.now[:alert] = "There was a problem with your form info"
       render :new
     end
  end

end

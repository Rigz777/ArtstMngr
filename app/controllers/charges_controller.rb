require "stripe"

class ChargesController < ApplicationController

  rescue_from Stripe::CardError, with: :card_error

  def new
    @event = Event.find_by id: params[:event_id]
  end

  def card_error
    @event = Event.find_by id: params[:event_id]
    flash.now[:alert] = "There was a problem with Your Credit Card. Please try again or contact your bank"
    render :new
  end

  def create
    @event = Event.find_by id: params[:event_id]

    Stripe.api_key = "sk_test_kQWxbdQvia7jGUuv9yV9ThUT"

    result = Stripe::Token.create(
      :card => {
        :number => params[:credit_card],
        :exp_month => params[:credit_card_expiration_month],
        :exp_year => params[:credit_card_expiration_year],
        :cvc => params[:credit_card_cvc]
      },
    )

    token = result[:id]

    if token.present?
      charge = Stripe::Charge.create(
        :amount => @event.half_price_in_cents,
        :currency => "usd",
        :source => token,
        :description => "Performance: #{@event.description} on #{@event.date}"
      )

      render :thanks

    else
      render :new
    end
  end
end

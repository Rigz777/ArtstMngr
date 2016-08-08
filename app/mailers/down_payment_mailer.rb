class DownPaymentMailer < ApplicationMailer

  def collect_down_payment(email, event)
      @event = event
      mail to: email, subject: "Artist Down Payment Invoice"
  end

end

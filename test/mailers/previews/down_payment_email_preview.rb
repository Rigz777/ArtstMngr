# Preview all emails at http://localhost:3000/rails/mailers/down_payment_email
class DownPaymentEmailPreview < ActionMailer::Preview

  def sample_mail_preview
    DownPaymentEmail.collect_down_payment(event)
  end


end

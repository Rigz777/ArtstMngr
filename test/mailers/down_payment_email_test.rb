require "test_helper"

class DownPaymentEmailTest < ActionMailer::TestCase
  def test_send_invoice
    mail = DownPaymentEmail.collect_down_payment
    assert_equal "Artist Down Payement Invoice", mail.subject
    assert_equal [@event.email], mail.to
    assert_equal ["vois.cornerstone.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end
end

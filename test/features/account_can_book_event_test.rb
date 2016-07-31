require "test_helper"

class AccountCanBookAndViewEventTest < Capybara::Rails::TestCase
  test "Can book and view new Event" do

    visit root_path

    me = Account.create! email: "vois@recordlabel.com", password: "12345678"

    click_link("Sign In")
    fill_in('Email', with: 'vois@recordlabel.com')
    fill_in('Password', with: '12345678')
    click_button('Sign In')
    click_link('New Event')

    fill_in("Description", with: "Back To School Event")
    fill_in("Talent Buyer", with: "Jon Doe")
    fill_in("Contact person", with: "HTX Promotions" )
    fill_in("Phone", with: "555-555-5555")
    fill_in("Email", with: "me@htxpromotions")
    fill_in("Website", with: "htxpromotions.com")
    fill_in("Date", with: "October 31, 2016")
    fill_in("Time of performance", with: "9:30 PM")
    fill_in("Location", with: "2970 West 38th St. Brooklyn, NY 11223")
    choose("event_performance_type_speaking")
    fill_in("Performance length", with: "30 minutes")
    fill_in("Ticket price", with: "35")
    choose("event_indoor_outdoor_indoor")
    fill_in("Expected attendance", with: "250")
    fill_in("Performance price", with: "550")
    click_button('Book Event')

    assert_content page, 'New Event Added'
    refute_content page, 'Add An Event'

    click_link("Back To School Event")

    assert_content page, ("Event Details")


  end



end

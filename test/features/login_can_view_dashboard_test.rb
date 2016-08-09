require "test_helper"

class LoginCanViewDashboardTest < Capybara::Rails::TestCase
  test "Cannot view dashboard when not logged in" do
    me = Account.create! email: "vois@recordlabel.com", password: "12345678"

    visit root_path
    assert_content page, "Sign In"
    refute_content page, "ArtstMngr dashboard"

  end

  test "Can view dashboard when logged in" do
    me = Account.create! email: "vois@recordlabel.com", password: "12345678"

    visit root_path
    click_link("Sign In")
    fill_in('Email', with: 'vois@recordlabel.com')
    fill_in('Password', with: '12345678')
    click_button('Sign In')
    assert_content page, "ArtstMngr"
    refute_content page, "Sign In"
  end


end

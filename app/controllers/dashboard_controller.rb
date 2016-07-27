class DashboardController < ApplicationController

  before_action  do
      if @current_account.nil?
        redirect_to welcome_path
      end
    end

  def home
  end

  def show
  end

  def new
  end
end

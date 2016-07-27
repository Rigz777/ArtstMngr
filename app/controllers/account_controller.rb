class AccountController < ApplicationController
  def new
    @account = Account.new
  end

  def create
    @account = Account.new
    @account.email = params[:account][:email]
    @account.password = params[:account][:password]
    @account.password_confirmation = params[:account][:password_confirmation]
      if @account.save
        session[:account_id] = @account.id
        redirect_to root_path, notice: "Thanks for siging up, #{@account.email}"
      else
        render :new
      end
    end
end

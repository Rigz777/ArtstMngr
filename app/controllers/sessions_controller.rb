class SessionsController < ApplicationController

  def new

  end

  def create
      account = Account.find_by email: params[:email]
      if account && account.authenticate(params[:password])
        session[:account_id] = account.id
        redirect_to root_path, notice: "You are signed in as #{account.email}"
      else
        flash.now[:alert] = "Something is wrong w/ your email and/or password"
        render :new
      end
  end

  def delete
    session.delete :account_id
    @current_user = nil
  end

end

class SessionsController < ApplicationController
  def create
    user = User.find_by(name: params[:user][:name])  # load the user row
    user = user.try(:authenticate, params[:user][:password]) # check to see if the provided password is equal to the password stored in the database ("user.try" means "if user != nil then user.find_by else nil end")
    return redirect_to(controller: 'sessions', action: 'new') unless user
    session[:user_id] = user.id    # if password is stored in the database, set user_id in the session
    @user = user
    redirect_to controller: 'welcome', action: 'home'
  end

  def destroy
    session.delete :user_id
    redirect_to '/'
  end
end

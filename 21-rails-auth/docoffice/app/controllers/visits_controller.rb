class VisitsController < ApplicationController
  def index
    if logged_in?
      @visits = current_user.visits
    else
      redirect_to login_path
    end
  end
end

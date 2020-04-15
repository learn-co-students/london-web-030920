class ApplicationController < ActionController::Base
  before_action :set_flash_and_session_objects

  private

  def set_flash_and_session_objects
    flash[:errors] ||= [] # if flash[:errors] is nil or false, set it to empty array
    session[:doctors_seen] ||= []
  end
end

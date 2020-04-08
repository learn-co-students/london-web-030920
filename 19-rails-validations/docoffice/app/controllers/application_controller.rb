class ApplicationController < ActionController::Base
  before_action :set_flash_errors

  private

  def set_flash_errors
    flash[:errors] ||= [] # if flash[:errors] is nil or false, set it to empty array
  end
end

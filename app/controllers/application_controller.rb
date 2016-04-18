class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  private
  
  def current_usr
	@current_usr ||= if session[:usr_id]
		Usr.find_by_id(session[:usr_id])
	end
  end
  
  helper_method :current_usr
end

class LoginController < ActionController::Base

	def new
	end
	
	def create
		usr = Usr.find_by_login(params[:usr][:login])
		
		if usr && usr.valid_password?(params[:usr][:password])
			session[:usr_id] = usr.id
			redirect_to "/contacts"
		else 
			flash[:alert] = "Login ou Senha inválido"
			render action: "new"
		end
	end

end

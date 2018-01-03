class ProfessionalAccountsController < ApplicationController
	def edit    
		@user = User.find(params[:id]) 
	end  

	def update_account   
		@user = User.find(params[:id])   
		if @user.update(account_params)   
			if params[:professional_account][:language].present?
				params[:professional_account][:language].each do |i|
					@user.user_languages.create(language_id: i)
				end
			end
			sign_in(@user, :bypass_sign_in => true)   
			redirect_to root_path     
		end  
	end  
	
	private    
	def account_params   
		params.require(:professional_account).permit(:email, :password, :password_confirmation, :first_name, :last_name, :contact, :address, :service_category_id, :experience, :about_me,:role, :profile_pic)   
	end
end

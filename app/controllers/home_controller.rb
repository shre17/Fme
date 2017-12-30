class HomeController < ApplicationController
  def index
  	@user = User.all
  end

  def sign_up_as_customer

  end

  def sign_up_as_professional
  	
  end

end


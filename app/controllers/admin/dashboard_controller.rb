class Admin::DashboardController < ApplicationController
  


 before_action :authenticate_user!

  layout "admin"
  def index
  	@admin_prizes = Admin::Prize.all
  end


  
end

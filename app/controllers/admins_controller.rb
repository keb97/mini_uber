class AdminsController < ApplicationController
  def new
    @admin = Admin.new
    @admin.build_user
  end

  def create
    @user = User.new(user_params)
    @admin = Admin.new(admin_params)
    @user.profile = @admin
    @admin.save
    redirect_to '/'
    flash[:notice] = "New admin signed up!"
  end

  private
    def user_params
      admin_params[:user_attributes]
    end
    def admin_params
      params.require(:admin).permit!
    end
end

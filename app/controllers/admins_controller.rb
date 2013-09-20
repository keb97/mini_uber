class AdminsController < ApplicationController
  def new
    @admin = Admin.new
    @admin.build_user
  end

  def create
    @user = User.new(user_params)
    @admin = Admin.new(admin_params)
    @user.profileable = @admin
    @user.save
    @admin.save
    redirect_to "index#home", flash[:notice] = "New admin signed up!"
  end

  private
    def user_params
      params.require(:user).permit!
    end
    def admin_params
      params.require(:admin).permit!
    end
end

class MembersController < ApplicationController


  def new
    @member = Member.new
    @member.build_user
  end

  def create
    @user = User.new(user_params)
    @member = Member.new(member_params)
    @user.profile = @member
    @member.save
    @user.save
    flash[:notice] = "New member signed up!"
    redirect_to "/"
  end

  private
    def member_params
      params.require(:member).permit!
    end

    def user_params
      member_params[:user_attributes]
    end
end

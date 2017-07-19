class UsersController < ApplicationController
   before_action :authenticate_user!, except: [:show]

# def index
#   @user = current_user.users
# end
#
# def edit; end
#
#   def update
#     if @user.update(user_params)
#       redirect_to @user, notice: "user updated"
#     else
#       render :edit
#     end
#   end
# 
#   def show
#     @users = Users.find(params[:id])
#   end
#
#
# private
# def set_user
#    @user = user.find(params[:id])
#  end
#
#  def user_params
#    params
#      .require(:user)
#      .permit(
#        :email, :password
#      )
#  end

end

class UsersController < ApplicationController
   before_action :authenticate_user!, except: [:show]

def index
  @user = current_user.users
end

def edit; end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: "user updated"
    else
      render :edit
    end
  end



=begin
  def index
    if current_user.admin?
      redirect_to home

    else current_user.student
      redirect_to home
    end
  end
=end
  #scope :all_admins, -> { where(admin: :true) }

  def show
    @users = Users.find(params[:id])
  end

=begin


  def current_user
    if current_user.admin?
      redirect_to admins_path

    elsif current_user.staff?
      redirect_to staff_path

    elsif
      current_user.student?
        redirect_to student_path
    else
      redirect_to root_path
    end
  end
=end



private
def set_user
   @user = user.find(params[:id])
 end

 def user_params
   params
     .require(:user)
     .permit(
       :email, :password
     )
 end

end

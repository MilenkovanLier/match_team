class UsersController < ApplicationController


  def index
    if current_user.admin
      @users = User.all
    elsif current_user.staff
      @users = User.all
    else current_user.student
      @users = User.all
    end
  end






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
end

class PagesController < ApplicationController

  def home
    @users = User.all
      if current_user && current_user.admin?
      else
        redirect_to students_path
      end
  end

  def admin?
    @users = current_user.admin
  end

  def make_admin
    @users = User.find params[:id]
    @users.update( :admin => true )
      redirect_to root_path
  end

  def make_student
    @users = User.find params[:id]
    @users.update( :admin => false )
      redirect_to root_path
  end
end

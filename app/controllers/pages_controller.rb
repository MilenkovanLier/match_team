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




end

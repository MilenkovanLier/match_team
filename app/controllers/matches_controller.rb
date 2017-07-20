class MatchesController < ApplicationController

  def array_all_students
    @users = User.students
  end

end

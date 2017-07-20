class MatchesController < ApplicationController

  def list_all_students
    @users = User.all
    @users = User.all_students.pluck(:id)
  end

  def students_array
    array_of_students.insert(list_all_students)
  end

end
def student

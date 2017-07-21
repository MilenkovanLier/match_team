class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, presence: true

  #scope :all_admins, -> { where(admin: :true) }
  # def initialize
  #   @user = user
  #   @students = students
  #   @pairs = pairs
  #   @rounds = rounds
  #   @student_pop = student_pop
  #   @calculate_teams = calculate_teams
  # end

  def pairs
    put_student_back.in_groups_of(2)
  end


private

  def students
     @students ||= User.where(admin: false).ids
  end

  def excl_students
      @students = students.pop
  end

  def shift_students
      @students = students.unshift(students.pop)
  end

  def put_student_back
    shift_students << excl_students
  end


  # def calculate_teams
  #   pairs.inspect
  # end
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #scope :all_admins, -> { where(admin: :true) }

  validates :email, presence: true
=begin
def self.student
  where(student: 'student')
end
=end
  #has_one :profile
=begin
  def has_profile?
    # true  && true
    profile.present? && profile.persisted?
  end
=end


end

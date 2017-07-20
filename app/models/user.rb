class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, presence: true

  #scope :all_admins, -> { where(admin: :true) }
  def students
    @user = user.where(admin: false).ids
  end

end

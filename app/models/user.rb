class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #scope :all_admins, -> { where(admin: :true) }

  validates :email, presence: true
  validates :admin, presence: true
  validates :student, presence: true


end

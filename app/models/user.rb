class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, presence: true


  #has_one :profile
=begin
  def has_profile?
    # true  && true
    profile.present? && profile.persisted?
  end
=end


end

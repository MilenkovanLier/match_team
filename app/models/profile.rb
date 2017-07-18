class Profile < ApplicationRecord
  belongs_to :user

  validates :fist_name, presence: true
  validates :last_name, presence: true
  
end

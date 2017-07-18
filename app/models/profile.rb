class Profile < ApplicationRecord
=begin
  belongs_to :user

  validates :fist_name, presence: true
  validates :last_name, presence: true

end
=end

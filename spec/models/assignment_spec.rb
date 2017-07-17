require 'rails_helper'

RSpec.describe Assignment, type: :model do
  describe "association with user" do
    it { is_expected.to belong_to :role}
    it { is_expected.to belong_to :user}
  end
end

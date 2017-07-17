require 'rails_helper'

RSpec.describe Role, type: :model do
  describe "validations" do
    it "is invalid without a name" do
      role = Role.new(name: "")
      role.valid?
      expect(role.errors).to have_key(:name)
    end
  end
end

require 'rails_helper'

RSpec.describe User, type: :model do
  it "is not valid without name" do
    user = User.new(name: nil)
    expect(user).to_not be_valid
  end
  it "raises an error when saving without name" do
    user = User.new(name: nil)
    expect{user.save!}.to raise_error(ActiveRecord::RecordInvalid, "Validation failed: Name can't be blank")
  end
end

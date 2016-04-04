require 'rails_helper'

RSpec.describe User, type: :model do
  describe "#user_full_name" do
    it "returns first and last name of user" do
      user = User.new(first_name: "John", last_name: "Doe")
      assert_equal("John Doe", user.user_full_name)
    end
  end
end

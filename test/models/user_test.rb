require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "email uniqueness" do
    u1 = FactoryGirl.create(:user)
    u2 = FactoryGirl.build(:user)
    asser_not u2.save
  end
end

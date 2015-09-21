require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "the uniqueness constraint" do
    user = User.create(name: "Abhishek")
    new_user = User.new(name: "Abhishek")
    assert_not new_user.save
    assert_equal new_user.errors.full_messages, ["Name has already been taken"]
  end

  test "the presence constraint" do
    user = User.new(name: "")
    assert_not user.valid?
  end
end

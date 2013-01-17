require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "frank zappa lives at the empire state building" do
    assert_equal "350 Fifth Ave", users(:fz).address.street_1
  end

  test "captain beefheart lives at aricebo" do
    assert_equal "Aricebo", users(:cb).address.city
  end
end

require 'test_helper'

# hits the real server; stub once everything is done
class EfinServiceTest < ActiveSupport::TestCase
  test "the service can check health" do
    health = EfinService.health
    assert_equal "Healthy", health
  end

  test "the service posts valid data" do
    efin = EfinService.efin(household: 1, income: 20000)
    puts "RESPONSE #{efin.inspect}"
  end
end

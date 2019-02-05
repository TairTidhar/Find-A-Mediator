require 'test_helper'

class MediatorPowersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get mediator_powers_new_url
    assert_response :success
  end

end

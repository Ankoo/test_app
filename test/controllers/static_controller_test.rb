require 'test_helper'

class StaticControllerTest < ActionController::TestCase
  include Devise::TestHelpers
  include Warden::Test::Helpers
  Warden.test_mode!

  def teardown 
    Warden.test_reset!
  end
    
  test "should get index" do
    get :index
    assert_response :success
  end

end

require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "Ruby on Rails Tutorial SampleApp"
  end

  test "should get sign up" do
    get signup_path
    assert_response :success
    assert_select "title", full_title("Sign up")
  end
  test 'should get signup' do
    get signup_path
    assert_response :success
    assert_select "title", "Sign up | #{@base_title}"
  end
end


require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get home
    assert_response :success
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
  end

  def home
  end

  def help
  end

end

require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "Ruby on Rails Tutorial SampleApp"
  end

  test "should get home" do
    get root_url
    assert_response :success
    assert_select "title", full_title("Home page")
    # assert_select "title", "Home page | #{@base_title}"
  end

  test "should get help" do
    get help_url
    assert_response :success
    assert_select "title", full_title("Help page")
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", full_title("About page")
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", full_title("Contact page")
  end

end

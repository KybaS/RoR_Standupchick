require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Stand-upchick"
  end
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get standup" do
    get standup_path
    assert_response :success
    assert_select "title", "Stand-up | #{@base_title}"
  end

  test "should get employees" do
    get employees_path
    assert_response :success
    assert_select "title", "Employees | #{@base_title}"
  end

  test "should get sign up" do
    get signup_path
    assert_response :success
    assert_select "title", "Sign up | #{@base_title}"
  end
end

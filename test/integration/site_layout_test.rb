require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test "layout links" do
    get root_path
    assert_select "a[href=?]", root_path, count: 1
    assert_select "a[href=?]", login_path
    # assert_select "a[href=?]", signup_path
  end
end

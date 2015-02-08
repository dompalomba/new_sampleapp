require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

    test "layout links" do
        get root_path
        assert_template 'static_page/home'
        assert_select "a[href=?]", root_url, count:2
        assert_select "a[href=?]", help_url
        assert_select "a[href=?]", about_url
        assert_select "a[href=?]", contact_url
    end
    test "signup link" do
        get root_path
        assert_template 'static_page/home'
        assert_select "a[href=?]", signup_path
    end
end

require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
   
  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 3
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", awards_path
    # assert_select "a[href=?]", contact_path
    assert_select "a[href=?]", media_path
    assert_select "a[href=?]", roster_path
    assert_select "a[href=?]", schedule_path
  end
  
end

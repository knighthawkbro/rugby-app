require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "Wentworth Men's Rugby"
  end
  
  test "should get root" do
    get root_url
    assert_response :success
  end
  
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end
  
  test "should get awards" do
    get static_pages_awards_url
    assert_response :success
    assert_select "title", "Awards | #{@base_title}"
  end
  
  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end
  
  test "should get media" do
    get static_pages_media_url
    assert_response :success
    assert_select "title", "Media | #{@base_title}"
  end
  
  test "should get roster" do
    get static_pages_roster_url
    assert_response :success
    assert_select "title", "Roster | #{@base_title}"
  end
  
  test "should get schedule" do
    get static_pages_schedule_url
    assert_response :success
    assert_select "title", "Schedule | #{@base_title}"
  end

end
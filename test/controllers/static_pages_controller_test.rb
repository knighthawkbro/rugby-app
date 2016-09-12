require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "Wentworth Men's Rugby"
  end
  
  test "should get root" do
    get root_path
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end
  
  test "should get awards" do
    get awards_path
    assert_response :success
    assert_select "title", "Awards | #{@base_title}"
  end
  
  test "should get contact" do
    get contact_url
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end
  
  test "should get media" do
    get media_path
    assert_response :success
    assert_select "title", "Media | #{@base_title}"
  end
  
  test "should get roster" do
    get roster_path
    assert_response :success
    assert_select "title", "Roster | #{@base_title}"
  end
  
  test "should get schedule" do
    get schedule_path
    assert_response :success
    assert_select "title", "Schedule | #{@base_title}"
  end

end
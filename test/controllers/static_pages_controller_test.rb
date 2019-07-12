require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "CoffeeRista"
  end


  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "CoffeeRista"
  end

  test "should get coffee" do
    get coffee_path
    assert_response :success
    assert_select "title", "Coffee | #{@base_title}"
  end

  test "should get about"do
    get about_path
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end

end

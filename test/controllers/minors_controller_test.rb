require 'test_helper'

class MinorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @minor = minors(:one)
  end

  test "should get index" do
    get minors_url
    assert_response :success
  end

  test "should get new" do
    get new_minor_url
    assert_response :success
  end

  test "should create minor" do
    assert_difference('Minor.count') do
      post minors_url, params: { minor: { description: @minor.description, enter_text: @minor.enter_text, exit_text: @minor.exit_text, major_id: @minor.major_id, name: @minor.name } }
    end

    assert_redirected_to minor_url(Minor.last)
  end

  test "should show minor" do
    get minor_url(@minor)
    assert_response :success
  end

  test "should get edit" do
    get edit_minor_url(@minor)
    assert_response :success
  end

  test "should update minor" do
    patch minor_url(@minor), params: { minor: { description: @minor.description, enter_text: @minor.enter_text, exit_text: @minor.exit_text, major_id: @minor.major_id, name: @minor.name } }
    assert_redirected_to minor_url(@minor)
  end

  test "should destroy minor" do
    assert_difference('Minor.count', -1) do
      delete minor_url(@minor)
    end

    assert_redirected_to minors_url
  end
end

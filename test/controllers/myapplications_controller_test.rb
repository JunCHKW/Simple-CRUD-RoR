require "test_helper"

class MyapplicationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @myapplication = myapplications(:one)
  end

  test "should get index" do
    get myapplications_url
    assert_response :success
  end

  test "should get new" do
    get new_myapplication_url
    assert_response :success
  end

  test "should create myapplication" do
    assert_difference("Myapplication.count") do
      post myapplications_url, params: { myapplication: { detail: @myapplication.detail, note: @myapplication.note, status: @myapplication.status, title: @myapplication.title } }
    end

    assert_redirected_to myapplication_url(Myapplication.last)
  end

  test "should show myapplication" do
    get myapplication_url(@myapplication)
    assert_response :success
  end

  test "should get edit" do
    get edit_myapplication_url(@myapplication)
    assert_response :success
  end

  test "should update myapplication" do
    patch myapplication_url(@myapplication), params: { myapplication: { detail: @myapplication.detail, note: @myapplication.note, status: @myapplication.status, title: @myapplication.title } }
    assert_redirected_to myapplication_url(@myapplication)
  end

  test "should destroy myapplication" do
    assert_difference("Myapplication.count", -1) do
      delete myapplication_url(@myapplication)
    end

    assert_redirected_to myapplications_url
  end
end

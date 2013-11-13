require 'test_helper'

class TextPinsControllerTest < ActionController::TestCase
  setup do
    @text_pin = text_pins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:text_pins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create text_pin" do
    assert_difference('TextPin.count') do
      post :create, text_pin: { content: @text_pin.content, title: @text_pin.title, user_id: @text_pin.user_id }
    end

    assert_redirected_to text_pin_path(assigns(:text_pin))
  end

  test "should show text_pin" do
    get :show, id: @text_pin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @text_pin
    assert_response :success
  end

  test "should update text_pin" do
    put :update, id: @text_pin, text_pin: { content: @text_pin.content, title: @text_pin.title, user_id: @text_pin.user_id }
    assert_redirected_to text_pin_path(assigns(:text_pin))
  end

  test "should destroy text_pin" do
    assert_difference('TextPin.count', -1) do
      delete :destroy, id: @text_pin
    end

    assert_redirected_to text_pins_path
  end
end

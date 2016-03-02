require 'test_helper'

class AlfredsControllerTest < ActionController::TestCase
  setup do
    @alfred = alfreds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alfreds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alfred" do
    assert_difference('Alfred.count') do
      post :create, alfred: { alfred: @alfred.alfred }
    end

    assert_redirected_to alfred_path(assigns(:alfred))
  end

  test "should show alfred" do
    get :show, id: @alfred
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alfred
    assert_response :success
  end

  test "should update alfred" do
    patch :update, id: @alfred, alfred: { alfred: @alfred.alfred }
    assert_redirected_to alfred_path(assigns(:alfred))
  end

  test "should destroy alfred" do
    assert_difference('Alfred.count', -1) do
      delete :destroy, id: @alfred
    end

    assert_redirected_to alfreds_path
  end
end

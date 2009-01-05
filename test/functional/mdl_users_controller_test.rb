require 'test_helper'

class MdlUsersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mdl_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mdl_user" do
    assert_difference('MdlUser.count') do
      post :create, :mdl_user => { }
    end

    assert_redirected_to mdl_user_path(assigns(:mdl_user))
  end

  test "should show mdl_user" do
    get :show, :id => mdl_users(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => mdl_users(:one).id
    assert_response :success
  end

  test "should update mdl_user" do
    put :update, :id => mdl_users(:one).id, :mdl_user => { }
    assert_redirected_to mdl_user_path(assigns(:mdl_user))
  end

  test "should destroy mdl_user" do
    assert_difference('MdlUser.count', -1) do
      delete :destroy, :id => mdl_users(:one).id
    end

    assert_redirected_to mdl_users_path
  end
end

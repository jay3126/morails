require 'test_helper'

class MdlRoleAssignmentsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mdl_role_assignments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mdl_role_assignment" do
    assert_difference('MdlRoleAssignment.count') do
      post :create, :mdl_role_assignment => { }
    end

    assert_redirected_to mdl_role_assignment_path(assigns(:mdl_role_assignment))
  end

  test "should show mdl_role_assignment" do
    get :show, :id => mdl_role_assignments(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => mdl_role_assignments(:one).id
    assert_response :success
  end

  test "should update mdl_role_assignment" do
    put :update, :id => mdl_role_assignments(:one).id, :mdl_role_assignment => { }
    assert_redirected_to mdl_role_assignment_path(assigns(:mdl_role_assignment))
  end

  test "should destroy mdl_role_assignment" do
    assert_difference('MdlRoleAssignment.count', -1) do
      delete :destroy, :id => mdl_role_assignments(:one).id
    end

    assert_redirected_to mdl_role_assignments_path
  end
end

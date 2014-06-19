require 'test_helper'

class FacilityIdsControllerTest < ActionController::TestCase
  setup do
    @facility_id = facility_ids(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:facility_ids)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create facility_id" do
    assert_difference('FacilityId.count') do
      post :create, facility_id: { golf_course_id: @facility_id.golf_course_id, tee_color: @facility_id.tee_color, tee_name: @facility_id.tee_name }
    end

    assert_redirected_to facility_id_path(assigns(:facility_id))
  end

  test "should show facility_id" do
    get :show, id: @facility_id
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @facility_id
    assert_response :success
  end

  test "should update facility_id" do
    patch :update, id: @facility_id, facility_id: { golf_course_id: @facility_id.golf_course_id, tee_color: @facility_id.tee_color, tee_name: @facility_id.tee_name }
    assert_redirected_to facility_id_path(assigns(:facility_id))
  end

  test "should destroy facility_id" do
    assert_difference('FacilityId.count', -1) do
      delete :destroy, id: @facility_id
    end

    assert_redirected_to facility_ids_path
  end
end

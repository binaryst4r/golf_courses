require 'test_helper'

class GolfCoursesControllerTest < ActionController::TestCase
  setup do
    @golf_course = golf_courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:golf_courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create golf_course" do
    assert_difference('GolfCourse.count') do
      post :create, golf_course: { address: @golf_course.address, city: @golf_course.city, facility_id: @golf_course.facility_id, name: @golf_course.name, state: @golf_course.state }
    end

    assert_redirected_to golf_course_path(assigns(:golf_course))
  end

  test "should show golf_course" do
    get :show, id: @golf_course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @golf_course
    assert_response :success
  end

  test "should update golf_course" do
    patch :update, id: @golf_course, golf_course: { address: @golf_course.address, city: @golf_course.city, facility_id: @golf_course.facility_id, name: @golf_course.name, state: @golf_course.state }
    assert_redirected_to golf_course_path(assigns(:golf_course))
  end

  test "should destroy golf_course" do
    assert_difference('GolfCourse.count', -1) do
      delete :destroy, id: @golf_course
    end

    assert_redirected_to golf_courses_path
  end
end

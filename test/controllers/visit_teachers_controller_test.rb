require 'test_helper'

class VisitTeachersControllerTest < ActionController::TestCase
  setup do
    @visit_teacher = visit_teachers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:visit_teachers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create visit_teacher" do
    assert_difference('VisitTeacher.count') do
      post :create, visit_teacher: { teacher_id: @visit_teacher.teacher_id, visit_id: @visit_teacher.visit_id }
    end

    assert_redirected_to visit_teacher_path(assigns(:visit_teacher))
  end

  test "should show visit_teacher" do
    get :show, id: @visit_teacher
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @visit_teacher
    assert_response :success
  end

  test "should update visit_teacher" do
    patch :update, id: @visit_teacher, visit_teacher: { teacher_id: @visit_teacher.teacher_id, visit_id: @visit_teacher.visit_id }
    assert_redirected_to visit_teacher_path(assigns(:visit_teacher))
  end

  test "should destroy visit_teacher" do
    assert_difference('VisitTeacher.count', -1) do
      delete :destroy, id: @visit_teacher
    end

    assert_redirected_to visit_teachers_path
  end
end

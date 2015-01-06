require 'test_helper'

class VisitPeopleControllerTest < ActionController::TestCase
  setup do
    @visit_person = visit_people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:visit_people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create visit_person" do
    assert_difference('VisitPerson.count') do
      post :create, visit_person: { person_id: @visit_person.person_id, visit_id: @visit_person.visit_id }
    end

    assert_redirected_to visit_person_path(assigns(:visit_person))
  end

  test "should show visit_person" do
    get :show, id: @visit_person
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @visit_person
    assert_response :success
  end

  test "should update visit_person" do
    patch :update, id: @visit_person, visit_person: { person_id: @visit_person.person_id, visit_id: @visit_person.visit_id }
    assert_redirected_to visit_person_path(assigns(:visit_person))
  end

  test "should destroy visit_person" do
    assert_difference('VisitPerson.count', -1) do
      delete :destroy, id: @visit_person
    end

    assert_redirected_to visit_people_path
  end
end

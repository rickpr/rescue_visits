require 'test_helper'

class PeopleControllerTest < ActionController::TestCase
  setup do
    @person = people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create person" do
    assert_difference('Person.count') do
      post :create, person: { address: @person.address, age: @person.age, attendance: @person.attendance, baptism: @person.baptism, category: @person.category, confirmation: @person.confirmation, gender: @person.gender, help: @person.help, name: @person.name, phone: @person.phone, priesthood: @person.priesthood, teacher_id: @person.teacher_id }
    end

    assert_redirected_to person_path(assigns(:person))
  end

  test "should show person" do
    get :show, id: @person
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @person
    assert_response :success
  end

  test "should update person" do
    patch :update, id: @person, person: { address: @person.address, age: @person.age, attendance: @person.attendance, baptism: @person.baptism, category: @person.category, confirmation: @person.confirmation, gender: @person.gender, help: @person.help, name: @person.name, phone: @person.phone, priesthood: @person.priesthood, teacher_id: @person.teacher_id }
    assert_redirected_to person_path(assigns(:person))
  end

  test "should destroy person" do
    assert_difference('Person.count', -1) do
      delete :destroy, id: @person
    end

    assert_redirected_to people_path
  end
end

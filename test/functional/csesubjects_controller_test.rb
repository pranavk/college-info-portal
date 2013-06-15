require 'test_helper'

class CsesubjectsControllerTest < ActionController::TestCase
  setup do
    @csesubject = csesubjects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:csesubjects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create csesubject" do
    assert_difference('Csesubject.count') do
      post :create, :csesubject => { :code => @csesubject.code, :lecture => @csesubject.lecture, :name => @csesubject.name, :practical => @csesubject.practical, :tutorial => @csesubject.tutorial }
    end

    assert_redirected_to csesubject_path(assigns(:csesubject))
  end

  test "should show csesubject" do
    get :show, :id => @csesubject
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @csesubject
    assert_response :success
  end

  test "should update csesubject" do
    put :update, :id => @csesubject, :csesubject => { :code => @csesubject.code, :lecture => @csesubject.lecture, :name => @csesubject.name, :practical => @csesubject.practical, :tutorial => @csesubject.tutorial }
    assert_redirected_to csesubject_path(assigns(:csesubject))
  end

  test "should destroy csesubject" do
    assert_difference('Csesubject.count', -1) do
      delete :destroy, :id => @csesubject
    end

    assert_redirected_to csesubjects_path
  end
end

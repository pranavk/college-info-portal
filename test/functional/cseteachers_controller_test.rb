require 'test_helper'

class CseteachersControllerTest < ActionController::TestCase
  setup do
    @cseteacher = cseteachers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cseteachers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cseteacher" do
    assert_difference('Cseteacher.count') do
      post :create, :cseteacher => { :email => @cseteacher.email, :name => @cseteacher.name, :phone => @cseteacher.phone, :photo => @cseteacher.photo }
    end

    assert_redirected_to cseteacher_path(assigns(:cseteacher))
  end

  test "should show cseteacher" do
    get :show, :id => @cseteacher
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @cseteacher
    assert_response :success
  end

  test "should update cseteacher" do
    put :update, :id => @cseteacher, :cseteacher => { :email => @cseteacher.email, :name => @cseteacher.name, :phone => @cseteacher.phone, :photo => @cseteacher.photo }
    assert_redirected_to cseteacher_path(assigns(:cseteacher))
  end

  test "should destroy cseteacher" do
    assert_difference('Cseteacher.count', -1) do
      delete :destroy, :id => @cseteacher
    end

    assert_redirected_to cseteachers_path
  end
end

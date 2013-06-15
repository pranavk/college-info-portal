require 'test_helper'

class Bcse6sControllerTest < ActionController::TestCase
  setup do
    @bcse6 = bcse6s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bcse6s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bcse6" do
    assert_difference('Bcse6.count') do
      post :create, :bcse6 => { :csesubject_id => @bcse6.csesubject_id, :cseteacher_id => @bcse6.cseteacher_id }
    end

    assert_redirected_to bcse6_path(assigns(:bcse6))
  end

  test "should show bcse6" do
    get :show, :id => @bcse6
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @bcse6
    assert_response :success
  end

  test "should update bcse6" do
    put :update, :id => @bcse6, :bcse6 => { :csesubject_id => @bcse6.csesubject_id, :cseteacher_id => @bcse6.cseteacher_id }
    assert_redirected_to bcse6_path(assigns(:bcse6))
  end

  test "should destroy bcse6" do
    assert_difference('Bcse6.count', -1) do
      delete :destroy, :id => @bcse6
    end

    assert_redirected_to bcse6s_path
  end
end

require 'test_helper'

class FrontStuffsControllerTest < ActionController::TestCase
  setup do
    @front_stuff = front_stuffs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:front_stuffs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create front_stuff" do
    assert_difference('FrontStuff.count') do
      post :create, front_stuff: { front: @front_stuff.front }
    end

    assert_redirected_to front_stuff_path(assigns(:front_stuff))
  end

  test "should show front_stuff" do
    get :show, id: @front_stuff
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @front_stuff
    assert_response :success
  end

  test "should update front_stuff" do
    patch :update, id: @front_stuff, front_stuff: { front: @front_stuff.front }
    assert_redirected_to front_stuff_path(assigns(:front_stuff))
  end

  test "should destroy front_stuff" do
    assert_difference('FrontStuff.count', -1) do
      delete :destroy, id: @front_stuff
    end

    assert_redirected_to front_stuffs_path
  end
end

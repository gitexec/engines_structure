require 'test_helper'

class BackStuffsControllerTest < ActionController::TestCase
  setup do
    @back_stuff = back_stuffs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:back_stuffs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create back_stuff" do
    assert_difference('BackStuff.count') do
      post :create, back_stuff: { back: @back_stuff.back }
    end

    assert_redirected_to back_stuff_path(assigns(:back_stuff))
  end

  test "should show back_stuff" do
    get :show, id: @back_stuff
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @back_stuff
    assert_response :success
  end

  test "should update back_stuff" do
    patch :update, id: @back_stuff, back_stuff: { back: @back_stuff.back }
    assert_redirected_to back_stuff_path(assigns(:back_stuff))
  end

  test "should destroy back_stuff" do
    assert_difference('BackStuff.count', -1) do
      delete :destroy, id: @back_stuff
    end

    assert_redirected_to back_stuffs_path
  end
end

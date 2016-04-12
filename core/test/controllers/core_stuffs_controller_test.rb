require 'test_helper'

class CoreStuffsControllerTest < ActionController::TestCase
  setup do
    @core_stuff = core_stuffs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_stuffs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_stuff" do
    assert_difference('CoreStuff.count') do
      post :create, core_stuff: { core: @core_stuff.core }
    end

    assert_redirected_to core_stuff_path(assigns(:core_stuff))
  end

  test "should show core_stuff" do
    get :show, id: @core_stuff
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_stuff
    assert_response :success
  end

  test "should update core_stuff" do
    patch :update, id: @core_stuff, core_stuff: { core: @core_stuff.core }
    assert_redirected_to core_stuff_path(assigns(:core_stuff))
  end

  test "should destroy core_stuff" do
    assert_difference('CoreStuff.count', -1) do
      delete :destroy, id: @core_stuff
    end

    assert_redirected_to core_stuffs_path
  end
end

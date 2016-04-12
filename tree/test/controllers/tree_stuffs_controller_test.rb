require 'test_helper'

class TreeStuffsControllerTest < ActionController::TestCase
  setup do
    @tree_stuff = tree_stuffs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tree_stuffs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tree_stuff" do
    assert_difference('TreeStuff.count') do
      post :create, tree_stuff: { tree: @tree_stuff.tree }
    end

    assert_redirected_to tree_stuff_path(assigns(:tree_stuff))
  end

  test "should show tree_stuff" do
    get :show, id: @tree_stuff
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tree_stuff
    assert_response :success
  end

  test "should update tree_stuff" do
    patch :update, id: @tree_stuff, tree_stuff: { tree: @tree_stuff.tree }
    assert_redirected_to tree_stuff_path(assigns(:tree_stuff))
  end

  test "should destroy tree_stuff" do
    assert_difference('TreeStuff.count', -1) do
      delete :destroy, id: @tree_stuff
    end

    assert_redirected_to tree_stuffs_path
  end
end

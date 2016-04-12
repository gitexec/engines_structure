require 'test_helper'

class ShopStuffsControllerTest < ActionController::TestCase
  setup do
    @shop_stuff = shop_stuffs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shop_stuffs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shop_stuff" do
    assert_difference('ShopStuff.count') do
      post :create, shop_stuff: { shop: @shop_stuff.shop }
    end

    assert_redirected_to shop_stuff_path(assigns(:shop_stuff))
  end

  test "should show shop_stuff" do
    get :show, id: @shop_stuff
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shop_stuff
    assert_response :success
  end

  test "should update shop_stuff" do
    patch :update, id: @shop_stuff, shop_stuff: { shop: @shop_stuff.shop }
    assert_redirected_to shop_stuff_path(assigns(:shop_stuff))
  end

  test "should destroy shop_stuff" do
    assert_difference('ShopStuff.count', -1) do
      delete :destroy, id: @shop_stuff
    end

    assert_redirected_to shop_stuffs_path
  end
end

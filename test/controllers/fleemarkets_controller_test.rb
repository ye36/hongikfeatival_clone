require 'test_helper'

class FleemarketsControllerTest < ActionController::TestCase
  setup do
    @fleemarket = fleemarkets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fleemarkets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fleemarket" do
    assert_difference('Fleemarket.count') do
      post :create, fleemarket: { category: @fleemarket.category, explain: @fleemarket.explain, image2: @fleemarket.image2, image3: @fleemarket.image3, location: @fleemarket.location, mainimage: @fleemarket.mainimage, price: @fleemarket.price, time: @fleemarket.time }
    end

    assert_redirected_to fleemarket_path(assigns(:fleemarket))
  end

  test "should show fleemarket" do
    get :show, id: @fleemarket
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fleemarket
    assert_response :success
  end

  test "should update fleemarket" do
    patch :update, id: @fleemarket, fleemarket: { category: @fleemarket.category, explain: @fleemarket.explain, image2: @fleemarket.image2, image3: @fleemarket.image3, location: @fleemarket.location, mainimage: @fleemarket.mainimage, price: @fleemarket.price, time: @fleemarket.time }
    assert_redirected_to fleemarket_path(assigns(:fleemarket))
  end

  test "should destroy fleemarket" do
    assert_difference('Fleemarket.count', -1) do
      delete :destroy, id: @fleemarket
    end

    assert_redirected_to fleemarkets_path
  end
end

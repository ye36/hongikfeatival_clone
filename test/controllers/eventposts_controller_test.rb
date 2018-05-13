require 'test_helper'

class EventpostsControllerTest < ActionController::TestCase
  setup do
    @eventpost = eventposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eventposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eventpost" do
    assert_difference('Eventpost.count') do
      post :create, eventpost: { contents: @eventpost.contents, image2: @eventpost.image2, image3: @eventpost.image3, location: @eventpost.location, mainimage: @eventpost.mainimage, runtime: @eventpost.runtime, title: @eventpost.title }
    end

    assert_redirected_to eventpost_path(assigns(:eventpost))
  end

  test "should show eventpost" do
    get :show, id: @eventpost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eventpost
    assert_response :success
  end

  test "should update eventpost" do
    patch :update, id: @eventpost, eventpost: { contents: @eventpost.contents, image2: @eventpost.image2, image3: @eventpost.image3, location: @eventpost.location, mainimage: @eventpost.mainimage, runtime: @eventpost.runtime, title: @eventpost.title }
    assert_redirected_to eventpost_path(assigns(:eventpost))
  end

  test "should destroy eventpost" do
    assert_difference('Eventpost.count', -1) do
      delete :destroy, id: @eventpost
    end

    assert_redirected_to eventposts_path
  end
end

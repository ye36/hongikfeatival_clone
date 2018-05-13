require 'test_helper'

class LostpostsControllerTest < ActionController::TestCase
  setup do
    @lostpost = lostposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lostposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lostpost" do
    assert_difference('Lostpost.count') do
      post :create, lostpost: { content: @lostpost.content, goal: @lostpost.goal, group: @lostpost.group, image: @lostpost.image, location: @lostpost.location, title: @lostpost.title }
    end

    assert_redirected_to lostpost_path(assigns(:lostpost))
  end

  test "should show lostpost" do
    get :show, id: @lostpost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lostpost
    assert_response :success
  end

  test "should update lostpost" do
    patch :update, id: @lostpost, lostpost: { content: @lostpost.content, goal: @lostpost.goal, group: @lostpost.group, image: @lostpost.image, location: @lostpost.location, title: @lostpost.title }
    assert_redirected_to lostpost_path(assigns(:lostpost))
  end

  test "should destroy lostpost" do
    assert_difference('Lostpost.count', -1) do
      delete :destroy, id: @lostpost
    end

    assert_redirected_to lostposts_path
  end
end

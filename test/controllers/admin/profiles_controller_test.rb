require 'test_helper'

class Admin::ProfilesControllerTest < ActionController::TestCase
  setup do
    @profile = profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profile" do
    assert_difference('Profile.count') do
      post :create, profile: { city: @profile.city, diety: @profile.diety, image: @profile.image, place: @profile.place, religion: @profile.religion, state: @profile.state, title: @profile.title, type: @profile.type }
    end

    assert_redirected_to admin_profile_path(assigns(:profile))
  end

  test "should show profile" do
    get :show, id: @profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profile
    assert_response :success
  end

  test "should update profile" do
    patch :update, id: @profile, profile: { city: @profile.city, diety: @profile.diety, image: @profile.image, place: @profile.place, religion: @profile.religion, state: @profile.state, title: @profile.title, type: @profile.type }
    assert_redirected_to admin_profile_path(assigns(:profile))
  end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete :destroy, id: @profile
    end

    assert_redirected_to admin_profiles_path
  end
end

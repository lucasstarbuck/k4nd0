require 'test_helper'

class TaskblocksControllerTest < ActionController::TestCase
  setup do
    @taskblock = taskblocks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:taskblocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create taskblock" do
    assert_difference('Taskblock.count') do
      post :create, taskblock: { description: @taskblock.description }
    end

    assert_redirected_to taskblock_path(assigns(:taskblock))
  end

  test "should show taskblock" do
    get :show, id: @taskblock
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @taskblock
    assert_response :success
  end

  test "should update taskblock" do
    patch :update, id: @taskblock, taskblock: { description: @taskblock.description }
    assert_redirected_to taskblock_path(assigns(:taskblock))
  end

  test "should destroy taskblock" do
    assert_difference('Taskblock.count', -1) do
      delete :destroy, id: @taskblock
    end

    assert_redirected_to taskblocks_path
  end
end

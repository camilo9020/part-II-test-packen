require 'test_helper'

class Admin::PrizesControllerTest < ActionController::TestCase
  setup do
    @admin_prize = admin_prizes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_prizes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_prize" do
    assert_difference('Admin::Prize.count') do
      post :create, admin_prize: { amount: @admin_prize.amount, description: @admin_prize.description, name: @admin_prize.name }
    end

    assert_redirected_to admin_prize_path(assigns(:admin_prize))
  end

  test "should show admin_prize" do
    get :show, id: @admin_prize
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_prize
    assert_response :success
  end

  test "should update admin_prize" do
    patch :update, id: @admin_prize, admin_prize: { amount: @admin_prize.amount, description: @admin_prize.description, name: @admin_prize.name }
    assert_redirected_to admin_prize_path(assigns(:admin_prize))
  end

  test "should destroy admin_prize" do
    assert_difference('Admin::Prize.count', -1) do
      delete :destroy, id: @admin_prize
    end

    assert_redirected_to admin_prizes_path
  end
end

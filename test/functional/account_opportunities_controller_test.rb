require 'test_helper'

class AccountOpportunitiesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:account_opportunities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create account_opportunity" do
    assert_difference('AccountOpportunity.count') do
      post :create, :account_opportunity => { }
    end

    assert_redirected_to account_opportunity_path(assigns(:account_opportunity))
  end

  test "should show account_opportunity" do
    get :show, :id => account_opportunities(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => account_opportunities(:one).id
    assert_response :success
  end

  test "should update account_opportunity" do
    put :update, :id => account_opportunities(:one).id, :account_opportunity => { }
    assert_redirected_to account_opportunity_path(assigns(:account_opportunity))
  end

  test "should destroy account_opportunity" do
    assert_difference('AccountOpportunity.count', -1) do
      delete :destroy, :id => account_opportunities(:one).id
    end

    assert_redirected_to account_opportunities_path
  end
end

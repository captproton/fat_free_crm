require 'test_helper'

class ContactOpportunitiesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contact_opportunities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contact_opportunity" do
    assert_difference('ContactOpportunity.count') do
      post :create, :contact_opportunity => { }
    end

    assert_redirected_to contact_opportunity_path(assigns(:contact_opportunity))
  end

  test "should show contact_opportunity" do
    get :show, :id => contact_opportunities(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => contact_opportunities(:one).id
    assert_response :success
  end

  test "should update contact_opportunity" do
    put :update, :id => contact_opportunities(:one).id, :contact_opportunity => { }
    assert_redirected_to contact_opportunity_path(assigns(:contact_opportunity))
  end

  test "should destroy contact_opportunity" do
    assert_difference('ContactOpportunity.count', -1) do
      delete :destroy, :id => contact_opportunities(:one).id
    end

    assert_redirected_to contact_opportunities_path
  end
end

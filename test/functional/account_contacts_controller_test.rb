require 'test_helper'

class AccountContactsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:account_contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create account_contact" do
    assert_difference('AccountContact.count') do
      post :create, :account_contact => { }
    end

    assert_redirected_to account_contact_path(assigns(:account_contact))
  end

  test "should show account_contact" do
    get :show, :id => account_contacts(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => account_contacts(:one).id
    assert_response :success
  end

  test "should update account_contact" do
    put :update, :id => account_contacts(:one).id, :account_contact => { }
    assert_redirected_to account_contact_path(assigns(:account_contact))
  end

  test "should destroy account_contact" do
    assert_difference('AccountContact.count', -1) do
      delete :destroy, :id => account_contacts(:one).id
    end

    assert_redirected_to account_contacts_path
  end
end

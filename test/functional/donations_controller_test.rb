require 'test_helper'

class DonationsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:donations)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_donation
    assert_difference('Donation.count') do
      post :create, :donation => { }
    end

    assert_redirected_to donation_path(assigns(:donation))
  end

  def test_should_show_donation
    get :show, :id => donations(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => donations(:one).id
    assert_response :success
  end

  def test_should_update_donation
    put :update, :id => donations(:one).id, :donation => { }
    assert_redirected_to donation_path(assigns(:donation))
  end

  def test_should_destroy_donation
    assert_difference('Donation.count', -1) do
      delete :destroy, :id => donations(:one).id
    end

    assert_redirected_to donations_path
  end
end

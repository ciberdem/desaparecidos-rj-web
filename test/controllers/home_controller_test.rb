require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  include Devise::Test::ControllerHelpers

  def login
    @current_user = User.create(email: 'johndoe@email.com', password: '12345678')
    sign_in @current_user
  end

  test '#index when user not logged' do
    get :index
    assert_response 200
    assert_includes @response.body, 'Login'
  end

  test '#index when user is logged' do
    login
    get :index
    assert_response 200
    assert_includes @response.body, @current_user.email
    assert_includes @response.body, 'Logout'
  end

  test '#failed_login' do
    get :failed_login
    assert_response 200
    assert_includes @response.body, 'Voltar'
  end
end
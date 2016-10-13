require 'test_helper'

class PeopleControllerTest < ActionController::TestCase
  include Devise::Test::ControllerHelpers

  def login
    @current_user = User.create(email: 'johndoe@email.com', password: '12345678')
    sign_in @current_user
  end

  def setup
    login
  end

  test '#new' do
    get :new
    assert_response 200
  end

  # test "should create article" do
  #   assert_difference('Article.count') do
  #     post articles_url, params: { article: { body: 'Rails is awesome!', title: 'Hello Rails' } }
  #   end
  #   assert_redirected_to article_path(Article.last)
  # end

  test '#create' do

  end

  test '#search' do
  end
end
class HomeController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @user = User.new
  end

  def failed_login
  end
end
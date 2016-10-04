class CustomLoginFailure < Devise::FailureApp
  def redirect_url
    failed_login_path
  end

  def respond
    http_auth? ? http_auth : redirect
  end
end
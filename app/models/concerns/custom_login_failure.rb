class CustomLoginFailure < Devise::FailureApp
  def redirect_url
    falha_login_path
  end

  def respond
    http_auth? ? http_auth : redirect
  end
end
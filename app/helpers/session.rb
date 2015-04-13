helpers do

  def current_user
        # TODO: return the current user if there is a user signed in.
    User.where(id: session[:id]).first if session[:id]
  end

  def login?(email, password)
    user = User.where(email: email).first
    if user.nil?
      return false
    end
    user.hash_password == password
  end

  def valid_password_length(password)
    password.length > 5
  end
end


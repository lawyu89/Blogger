require 'bcrypt'
get '/' do
  erb :index
end

get '/new' do
  @user = User.new
  erb :sign_up
end

get '/login' do
  if current_user
    redirect "users/#{current_user.id}"
  end
  erb :sign_in
end

post '/' do
  @user = User.new
  @user.first_name = params[:first_name]
  @user.last_name = params[:last_name]
  @user.email = params[:email]
  @user.hash_password = params[:password1]
  if valid_password_length(params[:password1]) && params[:password1] == params[:password2]
    if @user.save
      params[:password2]
      session[:id] = @user.id
      redirect "/users/#{@user.id}"
    else
      erb :sign_up
    end
  else
    unless params[:password1] == params[:password2]
      @user.errors[:base] << "Passwords Did Not Match"
    end
    unless valid_password_length(params[:password1])
      @user.errors[:base] << "Please Enter Password With At Least 6 Characters!"
    end
    erb :sign_up
  end
end

post '/login' do
  @error
  @user = User.where(email: params[:user_email]).first
  #return "#{@user.hash_password == params[:user_password]}"
  if login?(params[:user_email], params[:user_password])
    session[:id] = User.where(email: params[:user_email]).first.id
    redirect "/users/#{@user.id}"
  else
    @error = "Incorrect Email/Password Combination"
    erb :sign_in
  end
end

get '/logout' do
  session[:id] = nil
  @current_user = nil
  redirect '/'
end

get '/users/:id' do
  @blog = Blog.new
  erb :index
end

post '/users/:id' do
  @blog = Blog.new
  @blog.title = params[:title]
  @blog.body = params[:body]
  @blog.user_id = params[:id]
  if @blog.save
    redirect "/users/#{params[:id]}"
  else
    erb :index
  end
end

get '/users/:id/blogs/:blog_id' do
  @blog = Blog.where(id: params[:blog_id]).first
  if @blog.nil?
    status 404
    return "Blog Entry Does Not Exist!"
  end
  erb :blog
end

get '/users/:id/blogs/:blog_id/edit' do
  @blog = Blog.where(id: params[:blog_id]).first
  if @blog.nil?
    status 404
    return "Blog Entry Does Not Exist!"
  end
  erb :edit
end

put '/users/:id/blogs/:blog_id' do
  @blog = Blog.where(id: params[:blog_id]).first
  @blog.title = params[:title]
  @blog.body = params[:body]
  @blog.save
  redirect "users/#{params[:id]}"
end

get '/users/:id/blogs/:blog_id/delete' do
  @blog = Blog.where(id: params[:blog_id]).first
  erb :delete
end

delete '/users/:id/blogs/:blog_id' do
  @blog = Blog.where(id: params[:blog_id]).first
  @blog.destroy
  redirect "/users/#{current_user.id}"
end
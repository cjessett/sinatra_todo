get '/' do
  @todos = Todos.all
  erb :index
end

post '/' do
  Todos.create(description: params[:description])
  redirect '/'
end

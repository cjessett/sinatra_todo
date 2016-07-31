get '/' do
  redirect '/todos'
end

get '/todos' do
  @todos = Todos.all
  erb :index
end

post '/todos' do
  Todos.create(description: params[:description])
  redirect '/'
end

get '/todos/:id' do
  @todo = Todos.find(params[:id])
  erb :edit
end

put '/todos/:id' do
  todo = Todos.find(params[:id])
  todo.description = params[:description]
  todo.save
  redirect '/todos'
end

get '/todos/:id/delete' do
  todo = Todos.find(params[:id])
  todo.destroy
  redirect '/todos'
end

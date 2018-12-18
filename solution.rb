require "sinatra"

nombre = "Desconocido"

get "/" do
    erb :index
end

post "/" do
    nombre = params[:nombre]
    redirect to "/saluda"
end

get "/saluda" do
    "<h1>Hola #{nombre}!</h1>"
end
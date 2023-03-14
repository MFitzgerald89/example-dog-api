Rails.application.routes.draw do

  post "/users" => "users#create"
  post "/dogs" => "dogs#create"

end

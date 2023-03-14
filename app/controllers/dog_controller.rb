class DogController < ApplicationController

def create
 
  dog = Dog.create{
    name: params[:name],
    age: params[:age],
    breed: params[:breed]
  }
  
  if dog.save
  render :json { message: "Dog Created"}
  else
    render :json {message: errors.full_messages} :status
  end

end

end

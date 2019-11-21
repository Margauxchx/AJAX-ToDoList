class EmailsController < ApplicationController
  def index
    @emails = Email.all
  end
  
  def create
    @emails = Email.all
    @emails = Email.create(object: Faker::Book.title, body: "Coucou je suis le content de l'email")
   redirect_to emails_path
  end
  
  def show
    
  end
end

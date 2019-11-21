class EmailsController < ApplicationController
  def index
    @emails = Email.all
  end
  
  def create
    @emails = Email.all
    @emails = Email.create(object: Faker::Book.title, body: "Coucou je suis le content de l'email")
    
    respond_to do |format|
        format.html { redirect_to emails_path }
        format.js { }
    end
  end
  
  def show
    
  end
end

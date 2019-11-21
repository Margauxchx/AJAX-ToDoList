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
    @emails = Email.find(params[:id])
    
      respond_to do |format|
       format.html { }
       format.js { }
     end
  end
  
  def destroy
    @emails = Email.find(params[:id])
    @emails.destroy
    
    respond_to do |format|
       format.html { }
       format.js { }
    end
    
    flash[:notice] = "L'email a bien été supprimé"
    redirect_to emails_path
  end		
end

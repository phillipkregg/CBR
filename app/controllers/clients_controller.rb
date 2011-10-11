class ClientsController < ApplicationController
  
  def index
    @clients = Client.all    
  end
  
  def show
    @client = Client.find(params[:id])
  end

  def new
    @client = Client.new 
  end
  
  def create
    # Instantiate a new object using form parameters
    @client = Client.new(params[:client])
    # Now save the client
    if @client.save
        #if save succeeds
        redirect_to(:action => 'index')
    else
      # if save fails, redisplay the form so user can fix problems
      render('new')
    end
  end

end

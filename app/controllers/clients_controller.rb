class ClientsController < ApplicationController

  # GET /
  def index
  end

  # GET /client
  def show
  end

  def create
    client = Client.new client_params
    if client.save
      render :json => client.to_json
    else
      render :json => { :errors => client.errors.full_messages }
    end
  end

  # PUT /client
  def update
  end

  # DELETE /
  def destroy
    # The "/" route will redirect to sign_in/sign_up page with a "successfully deleted message"
  end

  private

    def client_params
      params.require(:client).permit(:unreads)
    end
end

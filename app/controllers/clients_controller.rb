class ClientsController < ApplicationController

  # GET /
  def index
  end

  # GET /client
  def show
  end

  def create
    client = Client.new client_params
    client.save!
  end

  # GET /client/edit
  def edit
    # edit
  end

  # PUT /client
  def update
  end

  # DELETE /
  def destroy
    # The "/" route will redirect to sign_in/sign_up page with a "successfully deleted message"
  end
end

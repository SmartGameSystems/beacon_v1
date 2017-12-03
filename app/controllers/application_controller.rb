class ApplicationController < ActionController::Base
  respond_to :json 
  def index
    Rails.logger.info "in index"
    render "layouts/application.html.erb"
  end

end

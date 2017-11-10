class ApplicationController < ActionController::Base
  
  def index
    Rails.logger.info "in index"
    render "layouts/application.html.erb"
  end
  
end

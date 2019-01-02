class ApplicationController < ActionController::Base
rescue_from ActiveRecord::RecordNotFound, with: :not_found

  def not_found
    render 'errors/404', status: 404
  end

  def hello
    text = "PARAMS: #{params}"
    render plain: text
  end
end

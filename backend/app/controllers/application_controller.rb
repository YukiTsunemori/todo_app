class ApplicationController < ActionController::API
  include Devise::Controllers::Helpers
  
  before_action :authenticate_user!, unless: :devise_controller?
    
  private
  
  def authenticate_user!
    unless user_signed_in?
      render json: { error: 'Unauthorized' }, status: :unauthorized
    end
  end
end

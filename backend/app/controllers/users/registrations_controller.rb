class Users::RegistrationsController < Devise::RegistrationsController

  respond_to :json
  
  private

  def respond_with(resource, _opts={})
    successful_registration && return if resource.persisted?
    failed_registration
  end

  def successful_registration
    render json: {
      message: "You've registered successfully",
      user: {
        id: resource.id,
        email: resource.email
      }
    }, status: :created
  end

  def failed_registration
    render json: {
      message: "Registration failed",
      errors: resource.errors.full_messages
    }, status: :unprocessable_entity
  end
end

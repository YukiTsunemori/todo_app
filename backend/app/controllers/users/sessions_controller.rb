class Users::SessionsController < Devise::SessionsController

  respond_to :json
  
  private
  def respond_with(resource, _opts={})
    render json: {
      message: "Welcome, you're in",
      user: {
        id: resource.id,
        email: resource.email
      }
    }, status: :ok
  end

  def respond_to_on_destroy
    successful_logout && return if current_user
    failed_logout
  end

  def respond_to_on_failure
    render json: {
      message: 'Invalid email or password',
      errors: ['Invalid email or password']
    }, status: :unauthorized
  end

  def successful_logout
    render json: { message: "You've logged out" }, status: :ok
  end

  def failed_logout
    render json: { message: "Something went wrong." }, status: :unauthorized
  end
end

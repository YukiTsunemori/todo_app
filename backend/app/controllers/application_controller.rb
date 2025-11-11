class ApplicationController < ActionController::API
  def test
    render json: { message: 'This is the test message.' }
  end
end

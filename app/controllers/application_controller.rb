class ApplicationController < ActionController::Base
  require 'auth_token'

  protect_from_forgery with: :null_session

  class AuthorizationException < StandardError; end

  rescue_from ActiveRecord::RecordNotFound, with: :not_found
  rescue_from AuthorizationException, with: :not_authorized

  respond_to :json

  private

  def not_found
    return head :not_found
  end

  def not_authorized
    render json: { error: 'Access Denied' }, status: :unauthorized
  end

  def parse_and_validate_jwt
    @jwt = request.headers['Authorization']
    if @jwt
      @jwt.gsub!(/^Bearer /, '')
      AuthToken.valid?(@jwt)
    else
      raise AuthorizationException
    end
  end

  def issue_new_token_for(user)
    AuthToken.issue_token({ user_id: user.id })
  end
end

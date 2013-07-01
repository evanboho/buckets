class SessionsController < Devise::SessionsController
  respond_to :json

  def create
    resource = User.find_for_database_authentication(:email => params[:user][:email])
    return invalid_email unless resource
 
    if resource.valid_password?(params[:user][:password])
      sign_in(:user, resource)
      resource.ensure_authentication_token!
      render :json=> {:success=>true, :auth_token=>resource.authentication_token, :email=>resource.email}
      return
    end
    invalid_login_attempt  
  end
  
  protected
   
  def invalid_email
    render :json=> {:success=>false, :message=>"Invalid email."}, :status=>200
  end

  def invalid_login_attempt
    render :json=> {:success=>false, :message=>"Invalid login or password."}, :status=>200
  end
end
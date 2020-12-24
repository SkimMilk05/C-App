class UsersController < Clearance::UsersController
  before_action :redirect_signed_in_users, only: [:create, :new]
  skip_before_action :require_login, only: [:create, :new], raise: false

 def new
   @user = user_from_params
   render template: "users/new"
 end

 def create
   @user = user_from_params

   if @user.save
     sign_in @user
     redirect_back_or url_after_create
   else
     render template: "users/new"
   end
 end

 private

 def redirect_signed_in_users
   if signed_in?
     redirect_to Clearance.configuration.redirect_url
   end
 end

 def url_after_create
   Clearance.configuration.redirect_url
 end

 def user_from_params
   email = user_params.delete(:email)
   password = user_params.delete(:password)
   first_name = user_params.delete(:first_name) # added name
   last_name = user_params.delete(:last_name)
   #school = user_params.delete(:school) #added school

   Clearance.configuration.user_model.new(user_params).tap do |user|
     user.email = email
     user.password = password
     user.first_name = first_name #added name
     user.last_name = last_name
     #user.school = school #added school
   end
 end

 def user_params
   params[Clearance.configuration.user_parameter] || Hash.new
 end
end

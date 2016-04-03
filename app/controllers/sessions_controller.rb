class SessionsController < ApplicationController

   def new
   end

   def create
      user = User.find_by_handle(params[:handle])
      # If the user exists AND the password entered is correct.
      if user && user.authenticate(params[:password])
	 # Save the user id inside the browser cookie. This is how we keep the user 
	 # logged in when they navigate around our website.
	 session[:user_id] = user.id
	 redirect_to session.delete(:return_to) || root_path
      else
	 # If user's login doesn't work, send them back to the login form.
	 redirect_to(root_path, notice: "Sign in unsuccessful.  Please try again.")
      end
   end

   def destroy
      session[:user_id] = nil
      redirect_to(root_path, notice: "Successfully logged out.")
   end

end

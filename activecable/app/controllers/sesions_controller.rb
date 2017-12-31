
if user && user.authenticate(params[:session][:password])
  log_in user
  return redirect_to session[:callback] if session[:callback].present?
  redirect_to user
end


ActionController::Dispatcher.middleware.use OmniAuth::Builder do
  provider :google_oauth2, CLIENT_ID, SECRET
end



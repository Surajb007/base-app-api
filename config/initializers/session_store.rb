#TODO: Change the domain after creating heroku app for this api
if Rails.env == "production"
    Rails.application.config.session_store :cookie_store, key: "_authentication_app", domain: "authentication-base-app-api.herokuapp.com"
else
    Rails.application.config.session_store :cookie_store, key: "_authentication_app"
end
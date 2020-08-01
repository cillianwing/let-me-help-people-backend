if Rails.env == "production" 
  Rails.application.config.session_store :cookie_store, key: "_let_me_help_people_app", domain: "app-name.herokuapp.com"
else
  Rails.application.config.session_store :cookie_store, key: "_let_me_help_people_app"
end
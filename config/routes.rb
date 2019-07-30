Rails.application.routes.draw do
  match("/rock", { :controller => "application", :action => "play_rock", :via => "get" })
  match("/paper", { :controller => "application", :action => "play_rock", :via => "get" })
  match("/scissors", { :controller => "application", :action => "play_rock", :via => "get" })

  match("/", { :controller => "application", :action => "homepage", :via => "get" })



  # ========================
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end

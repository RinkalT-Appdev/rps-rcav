Rails.application.routes.draw do
  

  get("/rock", { :controller => "game", :action => "user_plays_rock" })
  get("/paper", { :controller => "game", :action => "user_plays_paper" })
  get("/scissors", { :controller => "game", :action => "user_plays_scissors" })
  get("/", { :controller => "misc", :action => "homepage" })
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

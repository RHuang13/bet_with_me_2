Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "bets#index"
  # Routes for the Follow resource:
  # CREATE
  get "/follows/new", :controller => "follows", :action => "new"
  post "/create_follow", :controller => "follows", :action => "create"

  # READ
  get "/follows", :controller => "follows", :action => "index"
  get "/follows/:id", :controller => "follows", :action => "show"

  # UPDATE
  get "/follows/:id/edit", :controller => "follows", :action => "edit"
  post "/update_follow/:id", :controller => "follows", :action => "update"

  # DELETE
  get "/delete_follow/:id", :controller => "follows", :action => "destroy"
  #------------------------------

  # Routes for the Choice resource:
  # CREATE
  get "/choices/new", :controller => "choices", :action => "new"
  post "/create_choice", :controller => "choices", :action => "create"

  # READ
  get "/choices", :controller => "choices", :action => "index"
  get "/choices/:id", :controller => "choices", :action => "show"

  # UPDATE
  get "/choices/:id/edit", :controller => "choices", :action => "edit"
  post "/update_choice/:id", :controller => "choices", :action => "update"

  # DELETE
  get "/delete_choice/:id", :controller => "choices", :action => "destroy"
  #------------------------------

  # Routes for the Bet resource:
  # CREATE
  get "/bets/new", :controller => "bets", :action => "new"
  post "/create_bet", :controller => "bets", :action => "create"

  # READ
  get "/bets", :controller => "bets", :action => "index"
  get "/bets/:id", :controller => "bets", :action => "show"

  # UPDATE
  get "/bets/:id/edit", :controller => "bets", :action => "edit"
  post "/update_bet/:id", :controller => "bets", :action => "update"

  # DELETE
  get "/delete_bet/:id", :controller => "bets", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

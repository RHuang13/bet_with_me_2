Rails.application.routes.draw do
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

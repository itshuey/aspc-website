Rails.application.routes.draw do
  root :to => 'sessions#new'

  scope controller: :sessions do
    get    'login' => :new
    delete 'logout' => :destroy
    match  'sessions/create' => :create, :via => [:get, :post]
  end
end

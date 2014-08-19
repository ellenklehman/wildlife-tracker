Rails.application.routes.draw do
  match('/', {:via => :get, :to => 'critters#index'})
  match('/', {:via => :post, :to => 'critters#create'})
  match('/:id', {:via => :get, :to => 'critters#show'})
  match('/:id', {:via => [:patch, :put], :to => 'critters#update'})
  match('/:id', {:via => :delete, :to => 'critters#destroy'})
end

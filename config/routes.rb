Rails.application.routes.draw do
  match('/', {:via => :get, :to => 'critters#index'})
  match('/', {:via => :post, :to => 'critters#create'})
  match('/sightings', {:via => :get, :to => 'sightings#index'})
  match('/sightings', {:via => :post, :to => 'sightings#report'})
  match('/:id', {:via => :get, :to => 'critters#show'})
  match('/:id', {:via => :post, :to => 'sightings#create'})
  match('/:id', {:via => [:patch, :put], :to => 'critters#update'})
  match('/:id', {:via => :delete, :to => 'critters#destroy'})
  match('/sightings/:id', {:via => :get, :to => 'sightings#show'})
  match('/sightings/:id', {:via => [:patch, :put], :to => 'sightings#update'})
  match('/sightings/:id', {:via => :delete, :to => 'sightings#destroy'})
end

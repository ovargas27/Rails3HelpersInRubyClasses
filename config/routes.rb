NoActiveRecord::Application.routes.draw do
  root :to => 'contact#show'
  resource :contacts
end

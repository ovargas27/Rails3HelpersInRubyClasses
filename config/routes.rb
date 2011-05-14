NoActiveRecord::Application.routes.draw do
  root :to => 'contacts#show'
  resource :contacts
end

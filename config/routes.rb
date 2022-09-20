Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "pages#home"

   resources :examinations

   get 'mc_questions', to: 'mc_questions#index', as: 'mc_questions' # index
   get 'mc_questions/new', to: 'mc_questions#new', as: 'new_mc_question' # new
   post 'mc_questions', to: 'mc_questions#create' # create
   get 'mc_questions/:id/edit', to: 'mc_questions#edit', as: 'edit_mc_question' # edit
   patch 'mc_questions/:id', to: 'mc_questions#update' # update (as needed)
   put 'mc_questions/:id', to: 'mc_questions#update' # update (full replacement)
   delete 'mc_questions/:id', to: 'mc_questions#destroy' # destroy
   get 'mc_questions/:id', to: 'mc_questions#show', as: 'mc_question' # show
   
   
   
end

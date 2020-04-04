Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => 'registrations'}

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'contacts#index'

  resources :contacts, except: [:destroy] do
    get :make_call, on: :member
    get :generate_non_medical_reqs, on: :collection
    get :generate_medical_reqs, on: :collection

    resources :non_medical_reqs do
      get :fullfill, on: :member
      get :not_able, on: :member
    end
    resources :medical_reqs do
      get :fullfill, on: :member
      get :not_able, on: :member
    end
  end
end

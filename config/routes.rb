Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => 'registrations'}

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'contacts#index'

  get '/healthvolunteer', to: redirect('https://docs.google.com/forms/d/e/1FAIpQLSf9BHXZ9cKd8QPkWZ3fHXLliCXfrKOlIdBBJgGcLhEMPMzkfQ/viewform?vc=0&c=0&w=1')

  get 'find_phone' => "contacts#find_phone"
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

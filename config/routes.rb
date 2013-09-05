Maddysmusic::Application.routes.draw do

	get 'Resources' => 'pages#Resources'
  get 'About_Me' => 'pages#About_Me'
  get 'My_Philosophy' => 'pages#My_Philosophy'
  get 'Contact_Me' => 'pages#Contact_Me'
  get 'For_Students' => 'pages#For_Students'
  get 'Payment' => 'pages#Payment'

  devise_for :users, :controllers => { :passwords => "passwords" }

  devise_for :users do
  	resources :comments
  end


		
  root :to => 'reviews#index'
    

  resources :reviews

  resources :products

  resources :inquiries, :only => [:new, :create] do
    get 'thank_you', :on => :collection
  end

  
  


end

Maddysmusic::Application.routes.draw do
    
 
	
	get 'Resources' => 'pages#Resources'
  get 'About_Me' => 'pages#About_Me'
  get 'My_Philosophy' => 'pages#My_Philosophy'
  get 'Contact_Me' => 'pages#Contact_Me'
  get 'For_Students' => 'pages#For_Students'
  
  devise_for :users
  root :to => 'pages#home'



 
end

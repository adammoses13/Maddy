Maddysmusic::Application.routes.draw do
  
  get 'About_Me' => 'pages#About_Me'
  get 'My_Philosophy' => 'pages#My_Philosophy'
  get 'Contact_Me' => 'pages#Contact_Me'
  get 'Resources' => 'pages#Resources'
 
  root :to => 'pages#home'



 
end

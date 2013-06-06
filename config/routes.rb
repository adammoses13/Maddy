Maddysmusic::Application.routes.draw do
  get 'About' => 'pages#About'

  get 'Philosophy' => 'pages#Philosophy'

 root :to => 'pages#home'
end

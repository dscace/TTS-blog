Rails.application.routes.draw do
  devise_for :users
  resources :comments
  
	root 'blog_posts#index'

	get 'index' => 'blog_posts#index'

	get 'your_posts' => 'blog_posts#your_posts'

	get 'user_posts' => 'blog_posts#user_posts'

  resources :blog_posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

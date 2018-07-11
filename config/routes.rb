Rails.application.routes.draw do
  root 'epicenter#feed'

  get 'following' => 'epicenter#following'

  get 'followers' => 'epicenter#followers'

  get 'all_users' => 'epicenter#all_users'

  get 'show_user' => 'epicenter#show_user'

  get 'now_following' => 'epicenter#now_following'

  get 'unfollow' => 'epicenter#unfollow'

  get 'tag_tweets' => 'epicenter#tag_tweets'

  get 'all_tweets' => 'tweets#index'

  resources :tweets
  devise_for :users
end

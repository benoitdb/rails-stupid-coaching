Rails.application.routes.draw do
  get 'ask', to: 'questions#ask', as: :ask
  get 'answer', to: 'questions#answer', as: :answer
  get 'answers', to: 'questions#answers', as: :answers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

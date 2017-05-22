Rails.application.routes.draw do
  get 'home/index'
  get 'home/theme'
  get 'home/secondpage'

  root 'home#theme'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

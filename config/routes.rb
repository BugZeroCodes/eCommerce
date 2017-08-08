Rails.application.routes.draw do
  get 'charges/create'

  get 'charges/new'

  get 'cart/add_to_cart'

  get 'cart/view_order'

  get 'cart/checkout'

  get 'charges/create'

  get 'charges/new'

  # add the below line:

  resources :charges
    post 'order_complete' => 'cart#order_complete'
  devise_for :users
    post 'add_to_cart' => 'cart#add_to_cart'

    get 'view_order' => 'cart#view_order'

    get 'checkout' => 'cart#checkout'

    root 'storefront#all_items'

    get 'categorical' => 'storefront#items_by_category'

    get 'branding' => 'storefront#items_by_brand'

    get 'storefront/all_items'

    get 'storefront/items_by_category'

    resources :products

    get 'sign_out' => 'users/sign_out'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'storefront#all_items'
end

Rails.application.routes.draw do

  devise_for :users
  get 'articles/index'

  get 'welcome/index'


  root to: 'globals#index'

  resources :categories, shallow: true do
      resources :apps do
          resources :images
          resources :pros
          resources :cons
          resources :top10s
      end
  end


 

  resources :stores do
    resources :countries do
    end
  end

#get 'image/:id' => 'application#get_url'

get 'admins' => 'admins#index'

get 'top10s' => 'top10s#index'
#done
get 'global' => 'globals#index'
#done
get 'articles/set/:page' => 'articles#paginateMainPage', :page => /\d+/
#done
get 'articles/search/:name' => 'articles#searchArticles'
#done
get 'articles/search/:name/set/:page' => 'articles#searchPaginateArticles'
#done
get 'categories/:name/articles' => 'articles#showArticlesByCat'
#done
get 'categories/:name/articles/set/:page' => 'articles#showPaginateArticlesByCat'
#done
get 'articles/:name' => 'articles#show'
  

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end

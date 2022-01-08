Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root :to => 'homes#top'#トップページ
get 'books'=> 'books#index' #一覧および新規投稿
post 'books' => 'books#create'
get 'books/:id' => 'books#show',as: 'book'#詳細ページ
get 'books/:id/edit' => 'books#edit',as: 'edit_book'#編集ページ
patch 'books/:id' => 'books#update',as: 'update_book'
delete 'books/:id' => 'books#destroy',as: 'destroy_book'
end



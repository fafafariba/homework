Rails.application.routes.draw do
  resources :books, only: [:new, :show, :create, :index, :edit, :update, :destroy]
end

# Always use PATCH to update things here and there
# PUT is for replacing object entirely

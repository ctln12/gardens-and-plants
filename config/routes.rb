Rails.application.routes.draw do
  resources :gardens do
    # GET /gardens/:garden_id/plants/new
    # POST /gardens/:garden_id/plants
    resources :plants, only: [:new, :create]
  end

  resources :plants, only: :destroy
end

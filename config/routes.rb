Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root to:"lists#index"
end

# Voici les actions utilisateur que nous voulons implémenter dans notre application :

#     En tant qu’utilisateur, je peux voir toutes mes listes de films.
#     En tant qu’utilisateur, je peux créer une liste de films.
#     En tant qu’utilisateur, je peux voir les détails d’une liste de films.
#     En tant qu’utilisateur, je peux marquer (bookmark) un film dans une liste de films.
#     En tant qu’utilisateur, je peux détruire un bookmark.

#     Attention les films seront créés dans la base de données avec une seed, il n’est donc pas nécessaire d’implémenter aucune action utilisateur autour du modèle de movie.

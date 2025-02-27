Rails.application.routes.draw do
  root to:"lists#index"
  resources :lists do
    resources :bookmarks, only:[:new, :create]
  end
  resources :bookmarks, only:[:destroy]
end

# Voici les actions utilisateur que nous voulons implémenter dans notre application :

#     En tant qu’utilisateur, je peux voir toutes mes listes de films.
#     En tant qu’utilisateur, je peux créer une liste de films.
#     En tant qu’utilisateur, je peux voir les détails d’une liste de films.
#     En tant qu’utilisateur, je peux marquer (bookmark) un film dans une liste de films.
#     En tant qu’utilisateur, je peux détruire un bookmark.

#     Attention les films seront créés dans la base de données avec une seed, il n’est donc pas nécessaire d’implémenter aucune action utilisateur autour du modèle de movie.

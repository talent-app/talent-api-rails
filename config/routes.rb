Rails.application.routes.draw do
  devise_for :users, defaults: { format: :json }

  root to: "home#index"

  post "/graphql", to: "graphql#execute"

  if Rails.env.development?
    mount GraphiQL::Rails::Engine,
          at:           "/graphiql",
          graphql_path: "/graphql"
  end
end

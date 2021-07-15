class Types::Authentication < GraphQL::Schema::Object
  graphql_name 'Authentication'
  description 'User info and session token returned upon successful login'

  field :user, Types::User, :null => false
  field :jwt, String, :null => false
end

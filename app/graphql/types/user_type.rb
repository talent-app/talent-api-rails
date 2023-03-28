module Types
  class UserType < BaseObject
    #graphql_name 'user'

    field :id,           ID, :null => false
    field :email,        String, null: false
  end
end

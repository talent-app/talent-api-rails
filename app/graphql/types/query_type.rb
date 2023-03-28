module Types
  class QueryType < BaseObject

    description "The query root of this schema is full of bs"
    field :users, [UserType], :null => false

    def users
      User.all
    end
  end
end

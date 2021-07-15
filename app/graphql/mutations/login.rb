class Mutations::Login < Mutations::BaseMutation
  argument :credentials, Types::LoginInput, :required => true

  type Types::Authentication

  def resolve(
    credentials: nil
  )
    user = User.find_by(email: credentials[:email])
    return GraphQL::ExecutionError.new('User not found') unless user

    return GraphQL::ExecutionError.new('Invalid password') unless user.valid_password? credentials[:password]

    #TalentAPISchema.subscriptions.trigger(
    #  "userLoggedIn",
    #  {},
    #  :user => user
    #)

    {
      :user => user,
      :jwt  => user.token
    }
  end
end

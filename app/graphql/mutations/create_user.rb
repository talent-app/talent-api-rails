class Mutations::CreateUser < Mutations::BaseMutation
  argument :user, Types::UserInput, :required => true

  type Types::User

  def resolve(
    user: nil
  )
    user = User.create!(
      user.to_h
    )

    #TalentAPISchema.subscriptions.trigger(
    #  "userCreated",
    #  {},
    #  :user => user
    #)

    user
  end
end

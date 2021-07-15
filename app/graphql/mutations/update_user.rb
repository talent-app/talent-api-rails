class Mutations::UpdateUser < Mutations:: BaseMutation
  argument :user, Types::UserInput, :required => true

  type Types::User

  def resolve(
    user: nil
  )
    _user = User
      .find(user.id)
    _user.update!(
        user.to_h
    )

    #TalentAPISchema.subscriptions.trigger(
    #  "userUpdated",
    #  {},
    #  :user => _user
    #)

    _user
  end
end

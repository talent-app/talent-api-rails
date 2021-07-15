class Types::UserInput < Types::BaseInputObject
  description 'Attributes for a User'

  argument :id,           ID,     :required => false
  argument :first_name,   String, :required => false
  argument :last_name,    String, :required => false
  argument :email,        String, :required => false
  argument :password,     String, :required => false
  argument :password_confirmation, String, :required => false
end

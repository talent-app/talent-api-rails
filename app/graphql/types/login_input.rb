class Types::LoginInput < Types::BaseInputObject
  description 'Fields required to login'

  argument :email,        String, :required => false
  argument :password,     String, :required => false
end

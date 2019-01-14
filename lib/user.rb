require 'data_mapper'

class User
  include DataMapper::Resource

  property :id, Serial
  property :email, String, unique: true
  property :password, BCryptHash
  property :name, String
  property :username, String, unique: true

  # has n, :peeps

  def self.authenticate(email, username, password)
    user = first(username: username)
    return nil unless user

    if user.password == password
      user
    else
      nil
    end
  end

end

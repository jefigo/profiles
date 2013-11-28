class User < ActiveRecord::Base

  def self.create_with_omniauth(auth)
    create! do |user|
      user.name = auth["info"]["name"]
      user.email = auth["info"]["email"]
    end
  end

end

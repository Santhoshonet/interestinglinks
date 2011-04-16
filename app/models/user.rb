class User < ActiveRecord::Base
  acts_as_authentic

  validates_presence_of :username, :email
  validates_uniqueness_of :username, :email

end

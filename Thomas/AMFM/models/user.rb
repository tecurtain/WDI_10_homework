class User < ActiveRecord::Base

  has_secure_password

  has_and_belongs_to_many :festivals

  validates :username, :email, presence: true
  validates :username, :email, uniqueness: true

  def print_values
    "#{self.username}"
  end

end

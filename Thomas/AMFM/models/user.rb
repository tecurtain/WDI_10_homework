class User < ActiveRecord::Base

  validates :username, :email, presence: true
  validates :username, :email, uniqueness: true

  def print_values
    "#{self.username} - #{self.first_name} - #{self.last_name} - #{self.email} - #{self.bio} - #{self.phone} - #{self.age}"
  end

end

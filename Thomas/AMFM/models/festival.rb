class Festival < ActiveRecord::Base

  has_and_belongs_to_many :users

  validates :name, :location, presence: true
  validates :name, :location, uniqueness: true

  def print_values
    "#{self.name}"
  end

end

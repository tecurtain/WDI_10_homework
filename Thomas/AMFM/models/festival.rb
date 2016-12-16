class Festival < ActiveRecord::Base

  validates :name, :location, presence: true
  validates :name, :location, uniqueness: true

  def print_values
    "#{self.name} - #{self.location} - #{self.date} - $#{self.cost}"
  end

end

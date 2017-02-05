class Book < ApplicationRecord

  def self.search(search)
    where("name ILIKE ?", "%#{search}%")
    #where("name ILIKE ? OR author ILIKE ? OR genre ILIKE ? OR pages ILIKE ? OR year ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end
end

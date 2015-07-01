class Location < ActiveRecord::Base
  before_save :uppercase_name
  has_many :reviews
  validates :name, :description, :presence => true

  def uppercase_name
    self.name.capitalize!
  end

  def average_rating
    average_rating = self.reviews.average(:rating)
    average_rating ? average_rating.round(2) : "-"
  end

  def self.sort(direction)
    if direction == :asc
      order('name ASC')
    else
      order('name DESC')
    end
  end
end

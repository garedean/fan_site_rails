class Location < ActiveRecord::Base
  before_save :uppercase_name
  has_many :reviews
  validates :name, :description, :presence => true

  def uppercase_name
    self.name.capitalize!
  end
end

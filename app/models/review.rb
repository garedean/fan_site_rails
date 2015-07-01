class Review < ActiveRecord::Base
  belongs_to :location
  validates :author, :comment, :rating, :presence => true
  
end

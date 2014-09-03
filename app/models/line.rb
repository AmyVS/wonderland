class Line < ActiveRecord::Base
  has_many :stations, through: :stops
  validates :name, presence: true
  has_many :stops
end

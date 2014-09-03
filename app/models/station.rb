class Station < ActiveRecord::Base
  has_many :lines, through: :stops
  validates :name, presence: true
  has_many :stops
end

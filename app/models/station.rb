class Station < ActiveRecord::Base

  validates :name, presence: true

end

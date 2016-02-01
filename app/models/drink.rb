class Drink < ActiveRecord::Base
  validates :title, presence: true, length: { in: 4..30 }
end

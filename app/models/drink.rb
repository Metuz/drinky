class Drink < ActiveRecord::Base
  validates :title, presence: true, length: { in: 5..30 }
end

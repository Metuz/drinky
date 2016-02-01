class Drink < ActiveRecord::Base
  validates :title, presence: true, length: { in: 4..30 }
  has_attached_file :image, styles: { medium: '640x640>', large: '1280x1280>', thumb: '208x208>' }, default_url: "/images/:style/missing.png"
  validates_attachment :image, content_type: { content_type: ["image/jpeg", "image/png"] }
end

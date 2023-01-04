class Blog < ApplicationRecord
  has_rich_text :content
  has_many_attached :images

  enum :category, { personal: 0, travel: 1, fitness: 2, fashion: 3, music: 4 }
end

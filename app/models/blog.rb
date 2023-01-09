class Blog < ApplicationRecord
  # has_rich_text :content
  has_one_attached :image

  enum :category, { personal: 0, travel: 1, fitness: 2, fashion: 3, music: 4 }
  #
  # def some_text=(body)
  #  content.body = body
  # end
  #
  # def some_text
  #    content.to_s.gsub(/\A<div class="trix-content">(.*)<\/div>\z/m, '\1').strip.html_safe
  # end
end

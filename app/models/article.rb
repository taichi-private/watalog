class Article < ApplicationRecord
  validates :title, presence: true
  validates :text, presence: true
  validates :description, presence: true
  validates :keyword, presence: true
end

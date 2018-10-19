class Article < ApplicationRecord
  enum state: %i[draft published]

  validates :title, presence: true
  validates :text, presence: true
  validates :description, presence: true
  validates :keyword, presence: true
  validates :state, presence: true
end

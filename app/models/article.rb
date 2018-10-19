class Article < ApplicationRecord
  has_many :article_tags, dependent: :destroy
  has_many :tags, through: :article_tags

  enum state: %i[draft published]

  validates :title, presence: true
  validates :text, presence: true
  validates :description, presence: true
  validates :keyword, presence: true
  validates :state, presence: true
end

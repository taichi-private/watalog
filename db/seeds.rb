# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |i|
  Article.create(
    title: "タイトル#{i}",
    text: "テキスト#{i}",
    description: "ここはデスクリプション#{i}",
    keyword: "kokoha #{i}",
    state: "published"
  )
  Tag.create(
    name: "りんご#{i}"
  )
  ArticleTag.create(
    article_id: "1",
    tag_id: "#{i}"
  )
end

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
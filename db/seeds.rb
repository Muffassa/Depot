# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.create!(title: 'Programming Ruby 1.9 & 2.0',
                description: %{рубин, произносится ['ru:bɪ] — ру́би) — динамический, рефлективный
                              , интерпретируемый высокоуровневый
                              язык программирования для быстрого
                              и удобного объектно-ориентированного программирования.},
                image_url: 'ruby.jpg',
                price: 49.95)
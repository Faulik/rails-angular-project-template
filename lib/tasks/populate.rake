require 'populator'
require 'faker'

namespace :populate do
  desc 'Create random articles'
  task items: [:environment] do
    Item.populate(50..100) do |item|
      item.name = Faker::Commerce.product_name
      item.description = Populator.paragraphs(2..3)
      item.price = Faker::Commerce.price
    end
  end
end

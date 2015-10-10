object false

node(:totalItems) { @items.total_count }

child @items => :items do
  extends 'api/items/show.json'
end

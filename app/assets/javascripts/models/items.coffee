app.factory 'Item', ['AppModel', 'railsSerializer', (AppModel, railsSerializer) ->
  
  class Item extends AppModel
    @configure url: '/items', name: 'items', rootWrapping: false
]
app.controller 'itemShow', [ '$scope', '$stateParams', 'Item', ($scope, $stateParams, Item) -> 
  $scope.item = {}

  Item.get($stateParams.itemId).then (item) ->
    $scope.item = item

  return
]
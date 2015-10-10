app.controller 'index', [ '$scope', 'Item',  ($scope, Item) ->

  $scope.items = []
  $scope.totalItems = 0
  $scope.itemsPerPage = 20


  $scope.pagination = { current: 1 }

  $scope.pageChanged = (newPage) -> 
    getResultsPage(newPage)

  getResultsPage = (pageNumber) ->
    Item.query({page: pageNumber}).then (result) -> 
      $scope.items = result.items
      $scope.totalItems = result.totalItems

  getResultsPage(1)

  return
]
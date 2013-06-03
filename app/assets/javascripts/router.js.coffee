Buckets.Router.map (match) ->
  @route 'categories', path: '/'

Buckets.CategoriesRoute = Ember.Route.extend
  model: -> Buckets.Category.find()
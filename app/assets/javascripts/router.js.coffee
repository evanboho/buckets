Buckets.Router.map (match) ->
  @route 'categories', path: '/'

Buckets.CategoriesRoute = Ember.Route.extend
  setupController: (controller, model) ->
    controller.set("categories", Buckets.Category.find())
  #model: -> Buckets.Category.find()
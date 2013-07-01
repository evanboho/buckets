Buckets.CategoriesRoute = Ember.Route.extend
  model: ->
    Buckets.Category.find()

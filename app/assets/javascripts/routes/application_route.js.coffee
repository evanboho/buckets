Buckets.ApplicationRoute = Ember.Route.extend
  model: ->
    Buckets.Category.find()
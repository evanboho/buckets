Buckets.ApplicationController = Ember.Controller.extend
  names: []

  addName: ->
    @names.pushObject name: @get('newName')
    @set('name', name)
    @set('newName', '')

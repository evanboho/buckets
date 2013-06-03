Buckets.ApplicationController = Ember.Controller.extend

  getCategories: ->
    cat = Buckets.Category.find()
    console.log cat

  addName: ->
    @names.pushObject name: @get('newName')
    @set('name', name)
    @set('newName', '')

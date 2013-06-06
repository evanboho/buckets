Buckets.ApplicationController = Ember.Controller.extend

  signup: ->
    rawData = @getProperties('newEmail', 'newPassword', 'confirmation')
    data = {'user': {'email': rawData['newEmail'], 'password': rawData['newPassword'], 'password_confirmation': rawData['confirmation']}}
    Ember.$.post('/users.json', data).then (response) ->
      location.reload()

  login: ->
    data = {'user': @.getProperties('email', 'password')}
    Ember.$.post('/users/sign_in.json', data).then (response) ->
      location.reload()

  getCategories: ->
    cat = Buckets.Category.find()
    console.log cat

  addName: ->
    @names.pushObject name: @get('newName')
    @set('name', name)
    @set('newName', '')

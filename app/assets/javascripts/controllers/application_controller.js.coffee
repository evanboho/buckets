Buckets.ApplicationController = Ember.Controller.extend
  currentUser: null

  init: ->
    @set("currentUser", Buckets.User.find(window.user_id))

  signup: ->
    c = this
    rawData = @getProperties('newEmail', 'newPassword', 'confirmation')
    data = {'user': {'email': rawData['newEmail'], 'password': rawData['newPassword'], 'password_confirmation': rawData['confirmation']}}
    Ember.$.post('/users.json', data).then (response) ->
      c.set('errorMessage', response.message)
      if response.success
        c.set('token', response.token)
        location.reload()

  login: ->
    c = this
    data = {'user': @.getProperties('email', 'password')}
    Ember.$.post('/users/sign_in.json', data).then (response) ->
      c.set('errorMessage', response.message)
      if response.success
        c.set('token', response.token)
        location.reload()

  getCategories: ->
    cat = Buckets.Category.find()
    console.log cat

  addName: ->
    @names.pushObject name: @get('newName')
    @set('name', name)
    @set('newName', '')

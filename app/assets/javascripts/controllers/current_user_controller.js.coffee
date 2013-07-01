Buckets.CurrentUserController = Ember.ObjectController.extend
  content: null

  retrieveCurrentUser: ->
    controller = this
    Ember.$.getJSON "/users/#{window.user_id}", (data) ->
      user = Buckets.User.find(data.id)
      controller.set("content", user)
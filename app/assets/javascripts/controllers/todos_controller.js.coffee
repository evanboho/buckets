Buckets.TodoController = Ember.ObjectController.extend
  delTodo: ->
    todo = @get("model")
    todo.deleteRecord()
    todo.save()

Buckets.TodosController = Ember.ArrayController.extend
  addTodo: ->
    alert @get('newTodoName')
    #Buckets.Todo.createRecord({name: @get('newTodoName')})
    #@get('store').commit()
    #@set('newTodoName', "")
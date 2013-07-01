Buckets.TodoController = Ember.ObjectController.extend
  markTodoComplete: ->
    todo = @get("model")
    if todo.get("complete") == "completed"
      todo.set("complete", "")
    else
      todo.set("complete", "completed")
    todo.save()

Buckets.TodosController = Ember.ArrayController.extend

  addTodo: ->
    title = @get("newTodoName")
    if !title.trim()
      return
    alert title
    todo = Buckets.Todo.createRecord
      title: title
    todo.save()
    @set('newTodoName', "")
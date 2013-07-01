Buckets.CategoryController = Ember.ObjectController.extend
  delCategory: ->
    cat = @get("model")
    cat.deleteRecord()
    cat.save()

  addTodo: ->
    cat = @get("model")
    todo = Buckets.Todo.createRecord
      title: @get('newTodoName')
      category: cat
    todo.save()
    @set("newTodoName", "")

Buckets.CategoriesController = Ember.ArrayController.extend
  addCategory: ->
    cat = Buckets.Category.createRecord({name: @get('newCategoryName')})
    cat.save()
    @set('newCategoryName', "")
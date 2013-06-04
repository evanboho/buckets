Buckets.CategoryController = Ember.ObjectController.extend
  delCategory: ->
    cat = @get("model")
    cat.deleteRecord()
    cat.save()

  addTodo: ->
    cat = @get("model")
    Buckets.Todo.createRecord({title: @get('newTodoName'), category: cat})
    @get('store').commit()
    @set("newTodoName", "")

Buckets.CategoriesController = Ember.ArrayController.extend
  addCategory: ->
    Buckets.Category.createRecord({name: @get('newCategoryName')})
    @get('store').commit()
    @set('newCategoryName', "")
    
  getCategory: ->
    alert this.get("categories")
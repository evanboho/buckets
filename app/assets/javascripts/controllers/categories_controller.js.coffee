Buckets.CategoriesController = Ember.Controller.extend
  addCategory: ->
    Buckets.Category.createRecord({name: @get('newCategoryName')})
    @get('store').commit()
    @set('newCategoryName', "")
    
  delCategory: ->
    cat = @get("model")
    cat.deleteRecord()
    #cat.save()
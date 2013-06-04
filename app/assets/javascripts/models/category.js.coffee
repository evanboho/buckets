Buckets.Category = DS.Model.extend
  name: DS.attr('string')
  position: DS.attr('string')
  todos: DS.hasMany('Buckets.Todo')
Buckets.Todo = DS.Model.extend
  title: DS.attr('string')
  body: DS.attr('string')
  complete: DS.attr('string')
  category: DS.belongsTo('Buckets.Category')
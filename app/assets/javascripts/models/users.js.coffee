Buckets.User = DS.Model.extend
  firstName: DS.attr("string")
  lastName: DS.attr("string")
  email: DS.attr("string")
  admin: DS.attr("boolean")
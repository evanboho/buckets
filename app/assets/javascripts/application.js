// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
// require turbolinks
//= require handlebars
//= require ember
//= require ember-data
//= require_self
//= require buckets
Buckets = Ember.Application.create();
currentUser = Buckets.currentUser = function(){
  if (typeof user_id != "undefined") {
    return Buckets.User.find(window.user_id);
  }
}
userLoggedIn = Buckets.userLoggedIn = function() {

  if (typeof user_id != "undefined") {
    return true;
  } else {
    return false;
  }
}
userIsAdmin = Buckets.userIsAdmin = function() {
  if (currentUser().get("admin") == true) {
    return true;
  } else {
    return false;
  }
}
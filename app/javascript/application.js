// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

//= require jquery
//= require rails-ujs
//= require activestorage
//= require materialize
//= require turbolinks
//= require_tree .

document.addEventListener('DOMContentLoaded', function() {
  function initializeComponents() {

    var dropdowns = document.querySelectorAll('.dropdown-trigger');
    M.Dropdown.init(dropdowns);

    var sidenavs = document.querySelectorAll('.sidenav');
    M.Sidenav.init(sidenavs);

  }
    initializeComponents();}
    
);

  
  
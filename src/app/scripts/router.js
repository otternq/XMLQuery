// Filename: router.js
define([
  'jquery',
  'underscore',
  'backbone',
  'views/menu-view',
  'views/graph-view'
], function($, _, Backbone, MenuView, GraphView){
  var AppRouter = Backbone.Router.extend({
    routes: {
      // Default
      'editor/:type': 'editor',
      'about': 'about',
      '*actions': 'defaultAction'
    }
  });

  var initialize = function(){
  
    var app_router = new AppRouter;
    
    app_router.on('route:editor', function(type){

      var menuView = new MenuView();
      menuView.render(type);

      if (1==1) {

        var graphView = new GraphView();
        graphView.render();

      } else {
        console.log("Need a view for the editor");
      }

      
    });

    app_router.on('route:about', function() {
      console.log("In the about route");
    });

    app_router.on('route:defaultAction', function(){
        console.log("Default Route");
    });
    
    Backbone.history.start({pushState: true, root: "/"});
  };
  return {
    initialize: initialize
  };
});
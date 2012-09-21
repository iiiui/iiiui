var NewLikesView = Backbone.View.extend({
    el: $("#new_user_like"),
    events: {
      'click #addLike': 'addLike'
    },

    initialize: function() {
    },

    addLike: function(e) {
      e.preventDefault();
      // like = new Like();
      var options = { 
      // success:       showResponse  // post-submit callback 
        dataType: 'json'        // 'xml', 'script', or 'json' (expected server response type) 
      }; 
      $("#new_user_like").ajaxForm(options).ajaxSubmit(function(data) { 
        $("#addLike").attr('disabled','true'); 
        this.addSuccess;
      });
    },

    addSuccess: function() {
      console.log("success");
    }

});

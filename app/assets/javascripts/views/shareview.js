var NewSharesView = Backbone.View.extend({
    el: $("#new_share"),
    events: {
      'click #addShare': 'addShare'
    },

    initialize: function() {
    },

    addShare: function(e) {
      e.preventDefault();
      // share = new Share();
      var options = { 
      // success:       showResponse  // post-submit callback 
        dataType: 'json'        // 'xml', 'script', or 'json' (expected server response type) 
      }; 
      $("#new_share").ajaxForm(options).ajaxSubmit(function(data) { 
        $("#addShare").attr('disabled','true'); 
        this.addSuccess;
      });

    },
    addSuccess: function() {
      console.log("success");
    }

});

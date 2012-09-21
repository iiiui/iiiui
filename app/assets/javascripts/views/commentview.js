var NewCommentView = Backbone.View.extend({
    el: $("#new_comment"),
    events: {
      'click #addComment': 'addComment'
    },

    initialize: function() {
    },

    addComment: function(e) {
      e.preventDefault();
      // like = new Like();
      var options = { 
      // success:       showResponse  // post-submit callback 
        dataType: 'json'        // 'xml', 'script', or 'json' (expected server response type) 
      }; 
      $("#new_comment").ajaxForm(options).ajaxSubmit(function(data) { 
        $("#addComment").attr('disabled','true'); 
        $("#addComment").val('提交成功'); 
        // this.addSuccess;
      });
    },

    addSuccess: function() {
      console.log("success");
    }
})

var CommentsView = Backbone.View.extend({
    el: $("#new_comment"),
    initialize: function() {
    },
    reload: function(e){
    }
})

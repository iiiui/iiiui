var NewLikesView = Backbone.View.extend({
    el: $("#new_like"),
    events: {
      'click #addLike': 'addLike'
    },

    initialize: function() {
    },

    addLike: function(e) {
      e.preventDefault();
      like = new Like();
      // like.set('user_id',$("#like_user_id").val());
      // like.set('user_likes_id',$("#like_user_likes_id").val());
      // like.save();

    },

    addSuccess: function() {
      console.log("success");
    }

});

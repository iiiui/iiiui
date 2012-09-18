var NewSharesView = Backbone.View.extend({
  el: $('#new_share'),
    events: {
      'click #addShare': 'addShare'
    },

    initialize: function() {
      // console.log("init Share");
      // this.collection.on('add', this.clearInput, this);
      share = new Share();
    },

    addShare: function(e) {
      // console.log("addShare");
      e.preventDefault();
      share.share_user_id =  $("#share_user_id").val();
      share.share_user_shares_id = $("#share_user_shares_id").val();
      share.save();
    },

    // clearInput: function() {
    //   console.log("success");
    // }

});

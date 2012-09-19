var NewSharesView = Backbone.View.extend({
    el: $("#new_share"),
    events: {
      'click #addShare': 'addShare'
    },

    initialize: function() {
    },

    addShare: function(e) {
      e.preventDefault();
      share = new Share();
      share.set('user_id',$("#share_user_id").val());
      share.set('user_shares_id',$("#share_user_shares_id").val());
      share.save();
    },

    // clearInput: function() {
    //   console.log("success");
    // }

});

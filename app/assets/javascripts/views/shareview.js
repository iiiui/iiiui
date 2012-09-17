var NewSharesView = Backbone.View.extend({
    events: {
        'submit form': 'addStatus'
    },

    initialize: function() {
        // this.collection.on('add', this.clearInput, this);
    },

    // addStatus: function(e) {
    //     e.preventDefault();
    //     this.collection.create({ text: this.$('textarea').val() });
    // },

    // clearInput: function() {
    //     this.$('textarea').val('');
    // }

});

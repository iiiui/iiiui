var Share = Backbone.Model.extend({
    urlRoot: '/shares',
    defaults: {
      id: null,
      user_id: '',
      user_shares_id:''
    },
    toJSON: function() {
        return { share: _.clone( this.attributes ) }
    }
})

var Shares = Backbone.Collection.extend({
  model: Shares,
})


var UserShare = Backbone.Model.extend({
    urlRoot: '/user_shares',
    defaults: {
      id: null
    },
    toJSON: function() {
        return { usershare: _.clone( this.attributes ) }
    }
})

var UserShares = Backbone.Collection.extend({
  model: UserShares,
})


var Like = Backbone.Model.extend({
    urlRoot: '/likes',
    defaults: {
      id: null,
      user_id: '',
      user_likes_id:''
    },
    toJSON: function() {
        return { like: _.clone( this.attributes ) }
    }
})

var Likes = Backbone.Collection.extend({
  model: Likes,
})


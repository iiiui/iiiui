var Share = Backbone.Model.extend({
  url: '/shares',
    share_user_id: '',
    share_user_shares_id:''
})

var Shares = Backbone.Collection.extend({
  model: Shares
})


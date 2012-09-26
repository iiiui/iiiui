var NewUserSharesView = Backbone.View.extend({
  // el: $("#new_user_share"),
  el: 'body',
  events: {
    'click #addUserShare': 'addUserShare',
    'click #continuesharebtn' :'continueshare',
    'click #tosell' :'tosell',
    'click #additem':'additem',
    'click #turntosell':'turntosell'
  },

  initialize: function() {
    usershare = new UserShare();
  },

  addUserShare: function(e) {
    e.preventDefault();
    // console.log("success");
    var options = { 
      // success:       showResponse  // post-submit callback 
      dataType: 'json'        // 'xml', 'script', or 'json' (expected server response type) 
    }; 

    // bind form using 'ajaxForm' 
    $("#new_user_share").ajaxForm(options).ajaxSubmit(function(data) { 
      // alert('Form submit succeeded! Server returned: ' + data);
      $('#shareModal').modal('hide');
      $('#share_success').modal('show');
      // console.log(data);
      usershare.set("id",data.id);
      $('#sharedetail').attr('href',"/user_shares/"+data.id);
    }); 
  },
  continueshare: function(e){
    e.preventDefault();
    $('#shareModal').modal('show');
    $('#share_success').modal('hide');
  },
  tosell: function(e){
    $('#share_success').modal('hide');
    $('#shareModal').modal('hide');
    console.log(usershare.get("id"));
    $("#item_user_shares_id").val(usershare.get("id"));
    $('#itemModal').modal('show');
  },
  additem: function(e) {
    e.preventDefault();
    var options = { 
      // success:       showResponse  // post-submit callback 
      dataType: 'json'        // 'xml', 'script', or 'json' (expected server response type) 
    }; 
    $("#new_item").ajaxForm(options).ajaxSubmit(function(data) { 
      $('#itemModal').modal('hide');
      $('#share_success').modal('show');
    });
  },
  turntosell: function(e) {
    $("#item_user_shares_id").val($("#turntosell").data("id"));
  }

});
jQuery(function() {
  return $('#user_share_category_name').autocomplete({
      source: $('#user_share_category_name').data('autocomplete-source')
    });
});

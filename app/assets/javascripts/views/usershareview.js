var NewUserSharesView = Backbone.View.extend({
  // el: $("#new_user_share"),
  el: 'body',
  events: {
    'click #addUserShare': 'addUserShare',
    'click #continuesharebtn' :'continueshare'
  },

  initialize: function() {
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
      $('#sharedetail').attr('href',"/user_shares/"+data.id);
    }); 
  },
  continueshare: function(e){
    e.preventDefault();
    $('#shareModal').modal('show');
    $('#share_success').modal('hide');
  }
});

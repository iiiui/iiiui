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
        // target:        '#output1',   // target element(s) to be updated with server response 
        // beforeSubmit:  showRequest,  // pre-submit callback 
        // success:       showResponse  // post-submit callback 
 
        // other available options: 
        //url:       url         // override for form's 'action' attribute 
        // type:      type        // 'get' or 'post', override for form's 'method' attribute 
        dataType: 'json'        // 'xml', 'script', or 'json' (expected server response type) 
        //clearForm: true        // clear all form fields after successful submit 
        //resetForm: true        // reset the form after successful submit 
 
        // $.ajax options can be used here too, for example: 
        //timeout:   3000 
    }; 
 
    // bind form using 'ajaxForm' 
      $("#new_user_share").ajaxForm(options).ajaxSubmit(function(data) { 
        // alert('Form submit succeeded! Server returned: ' + data);
        $('#shareModal').modal('hide');
        $('#share_success').modal('show');
        console.log(data);
        $('#sharedetail').href="/user_shares/";
      }); 
    },
    continueshare: function(e){
      e.preventDefault();
      $('#shareModal').modal('show');
      $('#share_success').modal('hide');
    }
    // clearInput: function() {
    //   console.log("success");
    // }

});

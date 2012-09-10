$(document).ready(function() {
	$('.bottom_tooltip').tooltip({
		placement: 'bottom'
	});
	$('.left_tooltip').tooltip({
		placement: 'left'
	});
	$('.right_tooltip').tooltip({
		placement: 'right'
	});
	$('.top_tooltip').tooltip();
	$('.dropdown-menu.megamenu, .dropdown-menu.fb-one').click(function(event){
		event.stopPropagation();
	});
	$('#sidebar .accordion-group.fs .accordion-heading').addClass('active-head');
	$('#sidebar .accordion-group .accordion-heading').live('click', function(){
		$('#sidebar .accordion-group .accordion-heading').removeClass('active-head');
		$(this).addClass('active-head');
	});
	$('#sidebar .nav.nav-list li a').live('click', function(){
		$('#sidebar .nav.nav-list li').removeClass('active');
		$(this).parent('li').addClass('active');
	});
	$('.dp').datepicker();
	$('.cp').colorpicker();	
	$('#textarea, #textarea1, #textarea2, #textarea3, #textarea4, #textarea5, #textarea6').wysihtml5();
	
	$(".table tbody tr").hover(
		function() { $(this).children('td').children('.operation').children('.btn-group').fadeIn(); },
		function() { $(this).children('td').children('.operation').children('.btn-group').fadeOut(); }
	);
	
	$('#post_status_select li a').live('click', function(){
		$('#post_status span').html($(this).html());
	});
	
	$('#post_vis_select li a').live('click', function(){
		$('#post_vis span').html($(this).html());
		if($('#post_vis span').html() == "Password protected"){
			$('#post_password').show();
		}else{
			$('#post_password').hide();
		}
	});
	
	$('#post_pub_select').datepicker().on('changeDate', function(ev){
		var tgl = new Date(ev.date);
		var month = tgl.getMonth() + 1;
		var day = tgl.getDate();
		var year = tgl.getFullYear();
		$('#post_pub_select').html(month + "-" + day + "-" + year);
		$('#post_pub_select').datepicker('hide');
	});
});

// PLUPLOAD
	// Convert divs to queue widgets when the DOM is ready
	$(function() {
		$("#uploader").pluploadQueue({
			// General settings
			runtimes : 'gears,flash,silverlight,browserplus,html5',
			url : '../plugins/plupload/examples/upload.php',
			max_file_size : '10mb',
			chunk_size : '1mb',
			unique_names : true,

			// Resize images on clientside if we can
			//resize : {width : 320, height : 240, quality : 90},

			// Specify what files to browse for
			filters : [
				{title : "Image files", extensions : "jpg,gif,png"},
				{title : "Zip files", extensions : "zip"}
			],

			// Flash settings
			flash_swf_url : '../plugins/plupload/js/plupload.flash.swf',

			// Silverlight settings
			silverlight_xap_url : '../plugins/plupload/js/plupload.silverlight.xap'
		});

		// Client side form validation
		$('form').submit(function(e) {
			var uploader = $('#uploader').pluploadQueue();

			// Files in queue upload them first
			if (uploader.files.length > 0) {
				// When all files are uploaded submit form
				uploader.bind('StateChanged', function() {
					if (uploader.files.length === (uploader.total.uploaded + uploader.total.failed)) {
						$('form')[0].submit();
					}
				});
					
				uploader.start();
			} else {
				alert('You must queue at least one file.');
			}

			return false;
		});
	});
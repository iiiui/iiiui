// simple themeswitcher
if ($.cookie('my_kelas')) {
	var kelas_aktiv = $.cookie('my_kelas');
	$('body').removeClass().addClass(kelas_aktiv);
}else {
	$.cookie('my_kelas', 'dark', {expires: 7});
	$('body').removeClass().addClass('dark');
}
$('#themeSwitch li a').live('click', function(){
	var kelas = $(this).attr('class');
	$.cookie('my_kelas', kelas, {expires: 7});
	$('body').removeClass().addClass(kelas);
});
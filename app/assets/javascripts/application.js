// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery-fileupload/basic-plus
//= require jquery-fileupload/vendor/tmpl
//= require jquery.remotipart
//= require jquery-ui/datepicker
//= require masonry/masonry.min
//= require foundation
//= require ckeditor/init
//= require turbolinks
//= require_tree .

$(function(){ $(document).foundation(); });

//removes autoparagraph behavior for CKEditor (<p> tags not added automatically)
CKEDITOR.config.autoParagraph = false;
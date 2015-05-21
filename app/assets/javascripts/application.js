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
//= require ckeditor/init
//= require turbolinks
//= require slick/slick.min
//= require_tree .
//= require foundation

//$(function(){ $(document).foundation(); });
$(document).ready(function(){
    $(document).foundation();


    //******* modal caroussel handler *********/

    //stores position attributes of links
    var position;

    //retrieve the position attribute to know where to position the carousel
    $('a.open-modal').on('click', function() {
        position = $(this).attr('position');
    });

    //open modal and initilaize carousel
    $(document).on('open.fndtn.reveal', '[data-reveal]', function() {
        $('.slider').slick({
            infinite: true,
            adaptiveHeight: true,
            speed: 300,
            dots: true,
            slidesToShow: 1,
            slidesToScroll: 1,
            initialSlide: 0
        });
        $('.slider').slick('slickGoTo', position);//go to selected image
    });

    //destroy carousel instance on modal close
    $(document).on('close.fndtn.reveal', '[data-reveal]', function () {
        $('.slider').slick('unslick');
    });

    /********** B&W to color image on hover handling for locations, projects and albums ********/
    $(".BWtoColor").hover(
        function(){//mouse in
            if($(this).is("img")){
                var path = $(this).attr("src");
                path = path.replace("grey", "medium");
                $(this).attr("src", path);
            }else{//handle hover span titles
                var img = $(this).prev().children();
                var path = img.attr("src");
                path = path.replace("grey", "medium");
                img.attr("src", path);
            }
        },
        function(){//mouse out
            if($(this).is("img")) {
                var path = $(this).attr("src");
                path = path.replace("medium", "grey");
                $(this).attr("src", path);
            }
        }
    );
});

//removes autoparagraph behavior for CKEditor (<p> tags not added automatically)
CKEDITOR.config.autoParagraph = false;
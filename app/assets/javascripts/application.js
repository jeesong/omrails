// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require imagesloaded.pkgd.js
//= require masonry.pkgd.js
//= require bootstrap
//= require_tree .


// $('#pins').imagesLoaded( function() {
//   alert("")
//   // images have loaded
// });

// $(function () {
//   var $container = $('#pins');
//     $container.imagesLoaded(function(){
//       alert("HI")
//       $container.masonry({
//        itemSelector : '.box',
//        //columnWidth : 240
//     });
//   });
// });

$(function () {
var $container = $('#pins');
// initialize Masonry after all images have loaded
$container.imagesLoaded( function() {
  $container.masonry({
    itemSelector: '.box',
    columnWidth : 240
  });
});
});

// // or with jQuery
// // initialize Masonry
// $(function () {
// var $container = $('#pins').masonry();
// // // layout Masonry again after all images have loaded
//   $container.imagesLoaded( function() {
//     $container.masonry({
//       itemSelector: '.box',
//        columnWidth : 240
//     });
//   });
// });
// $(function () {
// var $container = $('#pins')
// $container.imagesLoaded( function() {
//     $container.masonry({
//       itemSelector: '.box',
//       columnWidth : 240
//     });
//   });
// });

// $(function () {
//   $('#pins').masonry({
//        itemSelector: '.box',
//        columnWidth : 240
//     });
// });






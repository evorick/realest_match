$(function() {
    $( '#buyer-search' ).click(function(){
      $( ".hide-results" ).switchClass( "hide-results", "show-results", 1000 );
      $( ".show-results" ).switchClass( "show-results", "hide-results", 1000 );
    });
  });
// switch class after click

// $(function() {
//     $( "#button" ).click(function(){
//       $( ".newClass" ).switchClass( "newClass", "anotherNewClass", 1000 );
//       $( ".anotherNewClass" ).switchClass( "anotherNewClass", "newClass", 1000 );
//     });
//   });

//switch class

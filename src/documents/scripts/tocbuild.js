              //Executes your code when the DOM is ready.  Acts the same as $(document).ready().
              $(function() {
                  // Calls the selectBoxIt method on your HTML select box and updates the showEffect option
                  var toc = $("#toc").tocify({ selectors: "h1,h2,h3,h4,h5,h6", scrollTo: 60, smoothScroll: true, highlightOnScroll: true, theme: "bootstrap3"}).data("toc-tocify");

                  // Sets the showEffect, scrollTo, and smoothScroll options
                  toc.setOptions({ extendPage: false, selectors: "h1, h2, h3, h4, h5, h6", ignoreSelector: "h1", scrollTo: 60, smoothScroll: true, highlightOnScroll: true, theme: "bootstrap3"});

              });
			  
			  var url = window.location;
// Will only work if string in href matches with location
$('ul.nav a[href="'+ url +'"]').parent().addClass('active');
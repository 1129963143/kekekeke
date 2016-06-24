/**
 * Created by wzh on 16-6-25.
 */
//= require turbolinks
//= require bootstrap-wysihtml5

//You may include all locales like this:

//= require bootstrap-wysihtml5/locales

//Or just add the ones that you want

//= require bootstrap-wysihtml5/locales/de-DE
//= require bootstrap-wysihtml5/locales/es-ES

//= require bootstrap-wysihtml5/wysihtml5x-toolbar.js
//= require bootstrap-wysihtml5/handlebars.runtime.min.js

//= require bootstrap-wysihtml5/minimum

$(document).on('page:load', function(){
    window['rangy'].initialized = false
});

$('.wysihtml5').wysihtml5({'toolbar': {'blockquote': false, 'html': false}})
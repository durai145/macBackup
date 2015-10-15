//define(["jquery", "jquery.alpha", "jquery.beta","jquery.gama", "field", "joint","backbone"], function($) {
define(["jquery", "jquery.alpha", "jquery.beta","jquery.gama", "field", "backbone", "joint"], function($) {
    //the jquery.alpha.js and jquery.beta.js plugins have been loaded.
    $(function() {
        $('body').alpha().gama().beta();
    });
});

/**
* Require Browsersync
*/
var bs = require('browser-sync').create();

/**
* Run Browsersync with server config
*/
bs.init({
  server: "src/site",
  files: [
    "src/site/css/*.css",
    "src/site/**/*.html"
  ]
});

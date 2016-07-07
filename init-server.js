/**
* Require Browsersync
*/
var bs = require('browser-sync').create();

/**
* Run Browsersync with server config
*/
bs.init({
  server: "site",
  files: [
    "site/css/*.css",
    "site/**/*.html"
  ]
});

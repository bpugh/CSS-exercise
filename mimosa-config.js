exports.config = {
  "modules": [
    "copy",
    "server",
    "jshint",
    "csslint",
    "require",
    "minify-js",
    "minify-css",
    'client-jade-static',
    "live-reload",
    "bower",
    "less",
    "jade"
  ],
  clientJadeStatic: {
    context:{},
    "prettyOutput": true
  }
}
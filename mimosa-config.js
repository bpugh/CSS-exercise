exports.config = {
  "modules": [
    "copy",
    "server",
    "csslint",
    "minify-css",
    'client-jade-static',
    "live-reload",
    "less",
    "jade"
  ],
  clientJadeStatic: {
    context:{},
    "prettyOutput": true
  }
}
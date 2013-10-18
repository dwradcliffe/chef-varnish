name             "varnish"
maintainer       "David Radcliffe"
maintainer_email "radcliffe.david@gmail.com"
license          "MIT"
description      "Installs/Configures varnish server"

version          "0.0.2"

recipe           "varnish::default",  "NOOP"
recipe           "varnish::server",   "Install varnish."
recipe           "varnish::yum_repo", "Install varnish yum repo."

depends          "yum"

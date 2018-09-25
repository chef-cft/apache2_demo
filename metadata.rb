name 'apache2_demo'
maintainer 'Chef Software, Inc.'
maintainer_email 'emea-success@chef.io'
license 'Apache-2.0'
description 'Installs/Configures apache2_demo'
long_description 'Installs/Configures apache2_demo'
version '0.1.0'
chef_version '>= 13.0' if respond_to?(:chef_version)

depends 'apache2', '>= 5.2.0'
depends 'os-hardening'

supports 'debian'
supports 'ubuntu'
supports 'redhat'
supports 'centos'
supports 'fedora'
supports 'amazon'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
issues_url 'https://github.com/chef-cft/apache2_demo/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
source_url 'https://github.com/chef-cft/apache2_demo'

name             'work'
maintainer       'Tom Scott'
maintainer_email 'tubbo@psychedeli.ca'
license          'All rights reserved'
description      'Builds my workstation'
long_description 'Builds my workstation'
version          '0.0.1'

depends 'macosx'
depends 'homebrew'
depends 'git'
depends 'users'
depends 'ruby_install'
depends 'chef-dk'

platform 'macosx', '>= 10.9'

recipe 'work::default', 'Build the workstation.'

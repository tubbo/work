name             'work'
maintainer       'Tom Scott'
maintainer_email 'tubbo@psychedeli.ca'
license          'All rights reserved'
description      'Builds my workstation'
long_description 'Builds my workstation'
version          '0.0.1'

depends 'macosx'
depends 'homebrew'
depends 'users'
depends 'ruby_install'

supports 'macosx', '>= 10.10'

recipe 'work::default', 'Build the workstation.'

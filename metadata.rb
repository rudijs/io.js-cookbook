name             'iojs'
maintainer       'Chris Manson'
maintainer_email 'chris@bloo.ie'
license          'MIT'
description      'Installs/Configures iojs'
long_description 'Installs/Configures iojs'
version          '0.2.1'

source_url       'https://github.com/Blooie/io.js-cookbook'
issues_url       'https://github.com/Blooie/io.js-cookbook/issues'

depends          "tar"

%w(ubuntu).each do |os|
  supports os
end

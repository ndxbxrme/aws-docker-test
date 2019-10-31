'use strict'

require 'ndx-server'
.config
  database: 'db'
  tables: ['users', 'pets']
  localStorage: './data'
  anonymousUser: true
.start()

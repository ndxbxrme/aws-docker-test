'use strict'

require 'ndx-server'
.config
  database: 'db'
  tables: ['users', 'pets']
  localStorage: './data'
  anonymousUser: true
.use (ndx) ->
  fs = require 'fs-extra'
  await fs.writeFile 'data/test.txt', 'hey', 'utf8'
.start()

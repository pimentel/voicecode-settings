Scope.register
  name: 'transmission-active'
  application: 'org.m0k.transmission'

Package.implement {scope: 'transmission-active'},
  'cursor:way-down': ->
    @key 'down', 'command option'
  'cursor:way-up': ->
    @key 'up', 'command option'
  'selection:way-down': ->
    @key 'down', 'command option shift'
  'selection:way-up': ->
    @key 'up', 'command option shift'

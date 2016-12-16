Scope.register
  name: 'preview-active'
  application: 'com.apple.Preview'

Package.implement
  scope: 'preview-active'
,
  'editor:move-to-line-number': (input) ->
    @key 'g', 'command option'
    if input > 0
      @delay 200
      @delay input
      @delay 100
      @key 'return'

Scope.register
  name: 'vlc'
  application: 'org.videolan.vlc'

Package.implement
  scope: 'vlc'
,
  'editor:move-to-line-number': (input) ->
    @key 'j', 'command'
    if input > 0
      @delay 200
      @string input
      @delay 100
      @key 'return'

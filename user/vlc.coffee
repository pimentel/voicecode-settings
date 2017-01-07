Scope.register
  name: 'vlc'
  application: 'org.videolan.vlc'

Package.implement
  scope: 'vlc'
,
  'editor:move-to-line-number': (input) ->
    if input > 0
      @applescript "tell application \"VLC\" to set the current time to #{input}"
    else
      @key 'j', 'command'

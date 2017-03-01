Scope.register
  name: 'vlc'
  application: 'org.videolan.vlc'

Package.implement
  scope: 'vlc'
,
  'editor:move-to-line-number': (input) ->
    # if number is between 0 and 100, use as a percentage
    # if greater than 100, use as seconds
    if input > 0
      if input > 100
        # body...
        @applescript "tell application \"VLC\" to set the current time to #{input}"
      else
        factor = input / 100.0
        cmd = """
          tell application "VLC"
          	set totalTime to duration of current item
          	set roundedTime to round (#{factor} * totalTime)
          	set the current time to roundedTime
          end tell
        """
        @applescript cmd
    else
      @key 'j', 'command'

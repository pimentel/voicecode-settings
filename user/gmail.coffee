gmail = Packages.get 'gmail'

gmail.command 'go-label',
  spoken: 'go label'
  enabled: true
  continuous: false
  description: 'go to a label when in Gmail'
  action: ->
    @key 'escape'
    @key 'escape'
    @string 'gl'
    @delay 500

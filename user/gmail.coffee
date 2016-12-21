gmail = Packages.get 'gmail'

gmail.command 'go-label',
  spoken: 'go label'
  enabled: true
  continuous: false
  action: ->
    @string 'gl'

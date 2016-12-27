Scope.register
  name: 'word-active'
  application: 'com.microsoft.Word'

Package.command 'add-citation',
  spoken: 'add citation'
  enabled: true
  description: "add citation using Zotero"
  tags: ["microsoft word", "user"]
  scope: ["word-active"]
  action: ->
    @key "a", "control option"

Package.implement
  scope: 'word-active'
,
  'editor:move-to-line-number': (input) ->
    @key 'g', 'command option'
    if input > 0
      @delay 500
      @string input
      @delay 500
      @key 'return'
      @key 'escape'

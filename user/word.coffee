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

runVisualBasic = (whichScript, application = "Microsoft Word") ->
  text = "tell application \"#{application}\" to run VB macro macro name \"#{whichScript}\""
  console.log text
  Actions.applescript text

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
  'cursor:way-down': ->
    runVisualBasic 'EndOfDocument'
  'cursor:way-up': ->
    runVisualBasic 'StartOfDocument'
  'common:zoom-in': ->
    runVisualBasic 'ViewZoomIn'
  'common:zoom-out': ->
    runVisualBasic 'ViewZoomOut'
  'common:indent-right': ->
    runVisualBasic 'IncreaseIndent'
  'common:indent-left': ->
    runVisualBasic 'DecreaseIndent'
  'delete:lines': ({first, last} = {}) ->
    @do 'cursor:way-right'
    @do 'selection:way-left'
    @do 'common:delete'
  # 'common:find': (input) ->

Package.command 'column-up',
  spoken: 'callup'
  description: "column selection up in atom (pronounced 'cal-up')"
  repeatable: true
  enabled: true
  tags: ["atom", "user"]
  scope: ['atom-editor-focused']
  action: ->
    @key "up", "control shift"
Package.command "calldown",
  spoken: 'calldown'
  description: "column selection down in atom (pronounced 'cal-down')"
  repeatable: true
  enabled: true
  tags: ["atom", "user"]
  scope: ['atom-editor-focused']
  action: ->
    @key "down", "control shift"

Package.implement
  scope: 'atom-editor-focused'
,
  'hp_abstract:go-to-left-pane': ->
    @key 'k', 'command'
    @key 'left', 'command'

  'hp_abstract:go-to-right-pane': ->
    @key 'k', 'command'
    @key 'right', 'command'

  'hp_abstract:go-to-up-pane': ->
    @key 'k', 'command'
    @key 'up', 'command'

  'hp_abstract:go-to-down-pane': ->
    @key 'k', 'command'
    @key 'down', 'command'

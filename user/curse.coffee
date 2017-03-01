curseWords =
  'frak': 'fuck'
  'frank': 'fuck'
  "frank's": 'fucks'
  'fracking': 'fucking'
  'fracture': 'fucker'

  'shot': 'shit'
  'shoddy': 'shitty'

Package.command 'curse',
  spoken: 'curse'
  grammarType: 'custom'
  description: "enter a curse word"
  autoSpacing: 'normal normal'
  multiPhraseAutoSpacing: 'normal normal'
  rule: '<spoken> (name)?'
  enabled: true
  variables:
    name: -> curseWords
  action: ({name}) ->
    if name?
      @string name

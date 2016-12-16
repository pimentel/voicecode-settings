Scope.register
  name: 'shortcat-active'
  application: 'com.sproutcube.Shortcat'

Package.implement
  scope: 'shortcat-active'
,
  'hp_abstract:open-shortcat': (input) ->
    if input?
      input = input.join('')
      input.split('').forEach((letter) =>
        @delay(50)
        @key letter, 'control'
      )

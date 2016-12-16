pack = Packages.register
  name: 'hp_abstract'
  description: 'Common commands used by Harold Pimentel'
  scope: 'abstract'

pack.commands
  'go-to-left-pane':
    spoken: 'pain left'
    description: 'Go to left pane'
    enabled: true
    tags: ['window management', 'user']

  'go-to-right-pane':
    spoken: 'pain right'
    description: 'Go to right pane'
    enabled: true
    tags: ['window management', 'user']

  'open-shortcat':
    spoken: 'shorty'
    grammarType: 'textCapture'
    description: 'Open short cat'
    enabled: true
    tags: ['navigation', 'user', 'window management']

  # words and possibly commands
  'insert-snakemake':
    spoken: 'shakemake'
    description: 'Insert "snakemake"'
    enabled: true
    tags: ['words', 'terminal']
  'insert-xargs':
    spoken: 'trexargs'
    description: 'enter the command "xargs'
    enabled: true
    tags: ['words']

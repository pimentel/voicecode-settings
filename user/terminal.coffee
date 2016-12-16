Scope.register
  name: 'iterm-active'
  application: 'com.googlecode.iterm2'

Package.command 'snakemake-dryrun',
  spoken: 'shake dry'
  enabled: true
  description: "perform a snakemake dry run"
  tags: ['terminal', 'user']
  scope: ['iterm-active']
  action: ->
    @string 'snakemake -p --dryrun'
    @key 'return'
Package.command "atom-here",
  spoken: "atom here"
  description: "open an atom editor at this directory"
  tags: ["shell", "user"]
  scopes: ['iterm-active']
  action: ->
    @string "atom ."
    @key "return"
Package.command 'find-here',
  spoken: 'find here'
  enabled: true
  description: 'a stub for a find command'
  tags: ['terminal', 'user']
  scope: ['iterm-active']
  action: ->
    @string "find . -name ''"
    @key 'left'
Package.command 'open-here',
  spoken: 'open here'
  enabled: true
  description: 'open the finder at this particular directory'
  tags: ['terminal', 'user']
  scope: ['iterm-active']
  action: ->
    @string 'open .'
    @key 'return'
Package.command 'squeue',
  spoken: 'sq'
  enabled: true
  description: 'on a SLURM system, run the "squeue" command'
  tags: ['terminal', 'user']
  scope: ['iterm-active']
  action: ->
    @string 'squeue -u $USER'
    @key 'return'
Package.command 'htop',
  spoken: 'h top'
  enabled: true
  tags: ['terminal', 'user']
  scope: ['iterm-active']
  action: ->
    @string 'htop'
    @key 'return'
Package.command 'disk-list',
  spoken: 'df'
  enabled: true
  tags: ['terminal', 'user']
  scope: ['iterm-active']
  action: ->
    @string 'df -h'
    @key 'return'
# Package.command 'sudo',
#   spoken: 'shell pseudo-'
#   autoSpacing: 'normal normal'
#   action: ->
Package.command 'tmux',
  spoken: "teekmux"
  autoSpacing: "normal normal"
  multiPhraseAutoSpacing: "normal normal"
  description: "insert 'tmux'"
  repeatable: false
  enabled: true
  tags: ["shell", "user"]
  scope: ['iterm-active']
  action: ->
    @string "tmux"
Package.command "mux-list",
  spoken: 'mux list'
  description: "tmux list"
  enabled: true
  tags: ["tmux", "user", "domain-specific"]
  scope: ['iterm-active']
  action: ->
    @string "tmux ls"
    @key "return"
Package.command "mux-new",
  spoken: 'mux new'
  description: "create a new named tmux session"
  enabled: true
  tags: ["tmux", "user", "domain-specific"]
  scope: ['iterm-active']
  action: ->
    @string "tmux new -s "
Package.command "mux-neck",
  spoken: "mux neck"
  description: "go to the next tmux session"
  enabled: true
  tags: ["tmux", "user", "domain-specific"]
  scope: ['iterm-active']
  action: ->
    @key "b", "control"
    @key ")"
Package.command "mux-preev",
  spoken: "mux preev"
  description: "go to the previous tmux session"
  enabled: true
  tags: ["tmux", "user", "domain-specific"]
  scope: ['iterm-active']
  action: ->
    @key "b", "control"
    @key "("
Package.command "mux-attach",
  spoken: "mux attach"
  description: "attach an existing tmux session"
  enabled: true
  tags: ["tmux", "user", "domain-specific"]
  scope: ['iterm-active']
  action: ->
    @string "tmux attach -t "
Package.command "mux-kill",
  spoken: "mux kill"
  description: "kill an existing tmux session"
  enabled: true
  tags: ["tmux", "user", "domain-specific"]
  scope: ['iterm-active']
  action: ->
    @string "tmux kill-session -t "
Package.command "mux-horizontal",
  spoken: 'mux horizontal'
  description: "create a horizontal split"
  enabled: true
  tags: ["tmux", "user", "domain-specific"]
  scope: ['iterm-active']
  action: ->
    @key "b", "control"
    @key '"'
Package.command "mux-vertical",
  spoken: 'mux vertical'
  description: "create a vertical split"
  tags: ["tmux", "user", "domain-specific"]
  enabled: true
  scope: ['iterm-active']
  action: ->
    @key "b", "control"
    @key "%"
Package.command 'secure-copy',
  spoken: 'secure copy'
  description: 'scp in the shell'
  tags: ['shell', 'user']
  enabled: true
  scope: ['iterm-active']
  action: ->
    @string 'scp -r '
Package.command 'virtual-environment-3',
  spoken: "vert pie three"
  description: "enable a python 3 virtual environment"
  enabled: true
  repeatable: false
  scope: ['iterm-active']
  tags: ["virtualenv", "shell", "user"]
  action: ->
    @string "workon py3"
    @key "return"
Package.command 'virtual-environment-2',
  spoken: "vert pie three"
  description: "enable a python 2 virtual environment"
  enabled: true
  repeatable: false
  scope: ['iterm-active']
  tags: ["virtualenv", "shell", "user"]
  action: ->
    @string "workon py2"
    @key "return"
Package.command 'git-commit-vc',
  spoken: 'jet voice'
  description: 'insert a git commit message with a voice code tag'
  enabled: true
  repeatable: false
  scope: ['iterm-active']
  tags: ['git ', 'user']
  action: ->
    @do 'git:git-commit'
    @string ' #vc'
    @key "left"
    @key "left"
    @key "left"
    @key "left"
Package.command 'git-log-pretty',
  spoken: 'jet logger'
  repeatable: false
  enabled: true
  scope: ['iterm-active']
  action: ->
    @string 'git lg'
    @key 'return'
  # "mux leave":
  #   description: "leave a tmux session (leaving it open)"
  #   tags: ["tmux", "user", "domain-specific"]
  #   triggerScopes: ['iTerm2', 'Terminal']
  #   action: ->
  #     @key "b", "control"
  #     @key 'd'
  # "mux scroll":
  #   description: "enter scroll mode in tmux"
  #   tags: ["tmux", "user", "domain-specific"]
  #   triggerScopes: ["iTerm2", "Terminal"]
  #   action: ->
  #     @key "b", "control"
  #     @key "["

remoteHosts =
  "genetics": "genetics"
  "lucille": "lucille"
  "lucille to": "lucille2"
  "seal to": "lucille2"
  "math": "math"
  "mcb": "mcb"
  "sherlock": "sherlock"
Package.command 'secure-shell',
  spoken: 'shell secure'
  grammarType: 'custom'
  scope: ['iterm-active']
  description: "either connect to a machine or simply type 'ssh '"
  rule: '<spoken> (host)?'
  enabled: true
  variables:
    host: -> remoteHosts
  action: ({host}) ->
    text = ""
    if host
      text = host
    @string "ssh " + text

namesToSpell =
  "wife": "puente"
  "far": "faraz"
  "hi": "haiyan"
  "case": "kaisa"
  "in": "innamaa"
  "kyle": "lior"
  "leroy": "lior"
  "lyle": "lior"
  "lori": "lorian"
  "mel": "melsted"
  "near": "nir"
  "nebula": "nabila"
  "paul": "pall"
  "patch": "pachter"
  "poison": "poisson"
  "rib": "ribado"
  "soon": "xuan"
  "val": "vasilis"
  "wang": "huang"
  "y": "yang"
  # mappings
  berkeley: "uc berkeley"
  "blood": "erythropoiesis"
  "geo": "geuvadis"
  "edge": "edger"
  "bit": "bitseq"
Package.command 'spell-name',
  spoken: 'brand'
  grammarType: 'custom'
  description: "enter a name"
  autoSpacing: 'normal normal'
  multiPhraseAutoSpacing: 'normal normal'
  rule: '<spoken> (name)?'
  enabled: true
  variables:
    name: -> namesToSpell
  action: ({name}) ->
    if name?
      @string name

# Package.command 'python-virtual-3',

properPunctuation =
  "coffee": "CoffeeScript"
  "cuff": "Cuffdiff 2"
  "express": "eXpress"
  "flexymike": "FlexyMike"
  "iterm": "iTerm"
  "javascript": "JavaScript"
  "github": "GitHub"
  "latex": "LaTeX"

  # names
_.each Settings["names"], (value, key) ->
  properPunctuation[key] = value.charAt(0).toUpperCase() +
    value.slice(1)

# things that need to be overloaded from 'brand'
properPunctuation["bit"] = "BitSeq"
properPunctuation["edge"] = "edgeR"
properPunctuation["geo"] = "GEUVADIS"
properPunctuation['berkeley'] = 'UC Berkeley'
Package.command 'spell-name-proper-punctuation',
  spoken: 'spellman'
  grammarType: 'custom'
  description: "enter a name with proper punctuation"
  autoSpacing: 'normal normal'
  multiPhraseAutoSpacing: 'normal normal'
  rule: '<spoken> (name)?'
  enabled: true
  variables:
    name: -> properPunctuation
  action: ({name}) ->
    if name?
      @string name

# abstract implementations
Package.implement
  scope: 'iterm-active'
,
  'hp_abstract:insert-snakemake': ->
    @string 'snakemake -p'
  'hp_abstract:go-to-left-pane': ->
    @key "b", "control"
    @key 'left'
  'hp_abstract:go-to-right-pane': ->
    @key "b", "control"
    @key 'right'
  'hp_abstract:go-to-up-pane': ->
    @key "b", "control"
    @key 'up'
  'hp_abstract:go-to-down-pane': ->
    @key "b", "control"
    @key 'down'

  'hp_abstract:insert-xargs': ->
    @string 'xargs '

Settings['command-line'] =
  shellCommands:
    'change': 'cd '
    'up': 'cd ..'
    "socks proxy": "ssh -D localhost:2020 "
    "trexargs": "xargs "
    "copy recursive": "cp -rf "
    'pseudo-': 'sudo '
    'pseudo': 'sudo '
    "said": "sed "
    "grep": "grep "
    "hawk": "awk "
    "make": "mkdir "
    "touch": "touch "
    "special sink": "rsync -ravh"
    "long": "ls -lh "
    "our sink": "rsync -rv "
    "see make": "cmake .."
    "shuffle": "shuf "
    "symbolic link": "ln -s "
    "tale": "tail "
    "tar": "tar -cvvf "
    "untar": "tar -xf "
    "usage": "du -sh "

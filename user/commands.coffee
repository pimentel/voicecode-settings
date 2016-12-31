Package.command 'rambo',
  spoken: 'rambo'
  description: "assign operator in R"
  enabled: true
  action: ->
    @string " <- "

# window management
Package.command 'close-window',
  spoken: 'totchway'
  description: 'close all windows in application'
  tags: ['window', 'navigation', 'user']
  enabled: true
  action: ->
    @key 'w', 'command shift'
Package.command 'application-window',
  spoken: 'appwin'
  enabled: true
  action: ->
    @key 'f3'
Package.command 'hyper-left',
  spoken: 'hyper left'
  description: 'move a window to the left using Hyperdock'
  enabled: true
  action: ->
    @key 'left', 'control option'
Package.command 'hyper-right',
  spoken: 'hyper right'
  description: 'move a window to the right using Hyperdock'
  enabled: true
  action: ->
    @key 'right', 'control option'
Package.command 'hyper-up',
  spoken: 'hyper up'
  description: 'move a window to the up using Hyperdock'
  enabled: true
  action: ->
    @key 'up', 'control option'
Package.command 'hyper-down',
  spoken: 'hyper down'
  description: 'move a window to the down using Hyperdock'
  enabled: true
  action: ->
    @key 'down', 'control option'
Package.command 'mission-control',
  spoken: 'mishcon'
  enabled: true
  description: "open mac 'Mission Control'"
  action: ->
    @openApplication "Mission Control"

# inserting words
Package.command 'snakefile',
  spoken: 'shakefile'
  enabled: true
  # autoSpacing: "normal normal"
  # multiPhraseAutoSpacing: "normal normal"
  description: "insert 'Snakefile'"
  tags: ["words", "user"]
  action: ->
    @string "Snakefile"
Package.command "osascript",
  spoken: 'oshascript'
  description: "insert 'osascript'"
  tags: ["words", "user"]
  enabled: true
  action: ->
    @string "osascript"
Package.command 'pandoc',
  spoken: "pan dock"
  description: "insert 'pandoc'"
  tags: ["words", "user"]
  enabled: true
  action: ->
    @string "pandoc"
Package.command 'seqtk',
  spoken: "seek tk"
  misspellings: ["ctk"]
  tags: ["words", "user"]
  description: "insert 'seqtk'"
  enabled: true
  action: ->
    @string "seqtk"
Package.command 'latexmk',
  spoken: "latex make"
  description: "insert 'latexmk'"
  tags: ["words", "user"]
  enabled: true
  action: ->
    @string "latexmk"
Package.command 'nolint',
  spoken: "nolint"
  tags: ["snippets", "user"]
  autoSpacing: "normal normal"
  multiPhraseAutoSpacing: "normal normal"
  enabled: true
  action: ->
    @string "# nolint"

# inserting symbols
Package.command 'space-ampersand-ampersand-space',
  spoken: 'dandy'
  tags: ['symbol', 'user']
  enabled: true
  continuous: false
  action: ->
    @string ' && '
Package.command 'space-star-space',
  spoken: 'death star'
  tags: ['symbol', 'user']
  enabled: true
  action: ->
    @string ' * '
Package.command 'space-pipe-space',
  spoken: 'despike'
  tags: ['symbol', 'user']
  enabled: true
  action: ->
    @string ' | '
Package.command 'space-minus',
  spoken: 'armin'
  misspellings: ['armen']
  autoSpacing: "auto never"
  multiPhraseAutoSpacing: "auto never"
  enabled: true
  description: "inserts a space then a ' -'. useful for arguments at the " +
  "command line"
  tags: ['symbol', 'user']
  action: ->
    @string ' -'
Package.command 'space-minus-minus',
  spoken: 'longarmin'
  autoSpacing: "auto never"
  multiPhraseAutoSpacing: "auto never"
  enabled: true
  description: "inserts a space then a ' --'. useful for arguments at the " +
  "command line"
  tags: ['symbol', 'user']
  action: ->
    @string ' --'
Package.command 'minus-space',
  spoken: 'mindy'
  continuous: false
  enabled: true
  tags: ['symbol', 'user']
  action: ->
    @string '- '
Package.command 'r-pipe',
  spoken: 'our pipe'
  description: 'pipe operator in R (with new line)'
  tags: ['symbol', "user"]
  enabled: true
  action: ->
    @string ' %>%'
    @key 'return'
Package.command 'r-pipes',
  spoken: 'our pipes'
  description: 'pipe operator in R (with spaces)'
  tags: ['symbol', "user"]
  enabled: true
  action: ->
    @string ' %>% '
Package.command 'r-script',
  spoken: 'our script'
  tags: ["user"]
  enabled: true
  action: ->
    @string 'Rscript '
Package.command 'dplyr',
  spoken: 'deep liar'
  description: 'insert "dplyr"'
  tags: ['symbol', "user"]
  enabled: true
  action: ->
    @string 'dplyr'
Package.command 'backtick-backtick',
  spoken: "teesh"
  tags: ["symbols", "user"]
  enabled: true
  action: ->
    @string "``"
    @key "left"

Package.command "comment-block",
  spoken: 'comment block'
  continuous: false
  enabled: true
  tags: ["snippets", "user"]
  action: ->
    @string """###
    #
    ###"""
    @key "up"
    @key "space"

# these aren't abstract because I am lazy
Package.command "markdown-block",
  spoken: 'mark block'
  description: "insert a markdown block with language decorator"
  enabled: true
  tags: ["snippets", "user"]
  action: ->
    switch (@currentApplication()).name
      when "Slack"
        @key 'enter', 'option'
        @string '```'
        @key 'enter', 'option'
        @key 'enter', 'option'
        @string '```'
        @up()
        @up()
      else
        @string """```

        ```"""
        @key "Up"
        @key "Up"
Package.command "rmarkdown-block",
  spoken: 'mark our'
  description: "insert a markdown block with Rmarkdown decorator"
  tags: ["snippets", "user"]
  enabled: true
  action: ->
    @string """```{r}

    ```"""
    @key "Up"
Package.command "markdown-plain",
  spoken: 'mark plane'
  description: "insert a plain markdown block"
  tags: ["snippets", "user"]
  enabled: true
  action: ->
    switch (@currentApplication()).name
      when "Slack"
        @key 'enter', 'option'
        @string '```'
        @key 'enter', 'option'
        @key 'enter', 'option'
        @string '```'
        @up()
      else
        @string """```

        ```"""
        @key "Up"

Package.command 'laugh',
  spoken: 'laffer'
  grammarType: 'integerCapture'
  description: "insert a variable number of 'ha'"
  autoSpacing: "normal normal"
  multiPhraseAutoSpacing: "normal normal"
  tags: ['user']
  enabled: true
  action: (input) ->
    output = ''
    if input?
      output += 'ha' for i in [1 .. input]
    else
      output = 'haha'
    @string output

Package.command 'ordinal-number',
  spoken: 'ordinal'
  grammarType: "integerCapture"
  description: "enter an ordinal number"
  enabled: true
  autoSpacing: "normal normal"
  multiPhraseAutoSpacing: "normal normal"
  tags: ["user"]
  action: (input) ->
    remainder = input %% 100
    text = input
    if (10 <= remainder and remainder <= 20) or remainder is 0
      text += "th"
    else
      mapping =
        "1": "st"
        "2": "nd"
        "3": "rd"
        "4": "th"
        "5": "th"
        "6": "th"
        "7": "th"
        "8": "th"
        "9": "th"
      remainder = remainder %% 10
      text += mapping[remainder]
    @string text

namesToSpell =
  "wife": "puente"
  "far": "faraz"
  "hi": "haiyan"
  "case": "kaisa"
  'crisper': 'crispr'
  'cass': 'cas9'
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

mathSymbols =
  "eta": "eta"
  "chai": "chi"
  "try": "chi"
  "c": "xi"
  "see": "xi"
  "lambda": "lambda"
  "mu": "mu"
  "row": "rho"
  "sigh": "psi"
  "tao": "tau"
  "towel": "tau"
  "theta": "theta"
  "up": "upsilon"
  "zeta": "zeta"
  # these are generally helpful with latex, but aren't actually math specific
  "page": "newpage"
Package.command 'math-symbol',
  spoken: "mathsim"
  grammarType: 'custom'
  description: "enter a name"
  rule: '<spoken> (symbol)'
  enabled: true
  variables:
    symbol: -> mathSymbols
  action: ({symbol}) ->
    if symbol?
      @string symbol

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
_.each namesToSpell, (value, key) ->
  properPunctuation[key] = value.charAt(0).toUpperCase() +
    value.slice(1)

# things that need to be overloaded from 'brand'
properPunctuation['berkeley'] = 'UC Berkeley'
properPunctuation['bit'] = "BitSeq"
properPunctuation['cass'] = 'Cas9'
properPunctuation['crisper'] = 'CRISPR'
properPunctuation["edge"] = "edgeR"
properPunctuation["geo"] = "GEUVADIS"
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
  'hp_abstract:insert-snakemake': ->
    @string 'snakemake'
  'hp_abstract:open-shortcat': (input) ->
    @key ' ', 'shift command'
    @delay(200)
    if input?.length
      input = input.join(' ')
      @string input
    else
      @string '.'

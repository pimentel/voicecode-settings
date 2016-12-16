Events.on 'shouldStringBePasted', (shouldPaste) ->
  if Scope.active('scope-name')
    shouldPaste.yesNo = no
    shouldPaste.continue = no
  shouldPaste

Settings.vocabulary =
  translations:
    "a session": "accession"
    "air b&b": "airbnb"
    "attack": "atac"
    "argus": "args"
    "breland": "Brielin"
    "bottomley": "bottomly"
    "ten x": "10X"
    # "arnie": "rna"
    "anti-": "anti"
    "multi-": "multi"
    "non-": "non"
    "pre-": "pre"
    "pseudo-": "pseudo"
    "re-": "re"
    "ass holes": "assholes"
    "ass hole": "asshole"
    "bio mart": "biomaRt"
    "bullion": "boolean"
    "by clustering": "biclustering"
    "by cluster": "bicluster"
    'cardin': 'cardon'
    "calisto": "kallisto"
    "callisto": "kallisto"
    "coastal": "kallisto"
    "single and": "single-end"
    "single end": "single-end"
    "paired and": "paired-end"
    "paired end": "paired-end"
    "poison": "poisson"
    'seek': 'seq'
    # "coffee script": "coffeescript"
    "condo": "conda"
    "cracken": "kraken"
   # frequently misrecognized
    "debrown": " de Bruijn"
    "e-mail": "email"
    "fast a": "fasta"
    "fast q": "fastq"
    "fast cue": "fastq"
    "fontweight": "font-weight"
    "gopi": "gulp"
    "guitar": "tar"
    "hark 5": "h5"
    "hark five": "h5"
    "herald": "harold"
    "hdf five": "hdf5"
    "hdl five": "hdf5"
    "hdr five": "hdf5"
    "hds five": "hdf5"
    "inter-": "inter"
    "intron's": "introns"
    "intron 's": "introns"
    "ice a form": "isoform"
    "i'd": "I'd"
    "i've": "I've"
    "jackal": "jekyll"
    "jeans": "genes"
    "jean": "gene"
    "jetter": "gitter"
    "kaymer": "kmer"
    "les": "less"
    "lottie": "laddie"
    "look see": "looksie"
    "lewis": "loess"
    "lois": "loess"
    "louis": "loess"
    "marquis": "marquee"
    "meta-": "meta"
    "noel": "null"
    "pam": "bam"
    "paced": "paste"
    "pimento": "pimentel"
    "pool request": "pull request"
    "pointy": "point"
    "prichard": "pritchard"
    "pretend": "end"
    "pseudo- alignment": "pseudoalignment"
    "rose": "rows"
    "rapper": "wrapper"
    "reeds": "reads"
    "repose": "repos"
    "roe": "row"
    "ro": "row"
    "shells": "\\"
    "sonnet": "SUNet"
    "sq light three": "sqlite3"
    "sq light": "sqlite"
    "scripps": "scripts"
    "set up": "setup"
    "seraphim": "serafim"
    "white space": "whitespace"
    "winters": "linters"
    "winter": "linter"
    "whistle": "width"
    "zug": "souk"
    # biology specific
    "chip sequencing": "ChIP-Seq"
    "pack bio": "PacBio"
    "rna seek": "RNA-Seq"
    "arnie seek": "RNA-Seq"
    "boom": "voom"
    "de seek": "DESeq2"
    "dell seek to": "DESeq2"
    "dell seek": "DESeq2"
    "eb seek": "EBSeq"
    "bit seek": "BitSeq"
    "edge our": "edgeR"
    "etch seek": "edgeR"
    "edger": "edgeR"
    "transcriptome's": "transcriptomes"
    "g text": "GTEx"
  vocabularyAlternate:
    "E numb": "enum"
    "H five": "h5"
    "kaymer": "kmer"
    "fast a": "fasta"
    "fast q": "fastq"
    "fast cue": "fastq"
    "a sink": "async"
    "node JS": "nodejs"
    "EQTL": "eqtl"
    "QTL": "qtl"

Settings.vocabulary =
  vocabulary: [
    "bayes"
    "convolutional"
    "flexymike"
    "frequentist"
    'localhost'
    "neural network"
    "neural networks"
    'node'
    'numpy'
    'puente'
    'pseudoalignment'
    'selty'
    "tmux"
    "transcriptome"
    "untar"
    'vectorization'
    'vectorize'
    "voom"
    'wald'
    "viglink"
    "emoji"
    "zotero"
    # combinations
    "champ thanks"
    "fold change"
    "nerb row"
    "row names"
    "smash cuff diff"
    "smash cuff quant"
    "smash dev tools"
    "smash debug once"
    "smash hi sat"
    "smash gg plot"
    "single cell"
  ]
names =
  'editor:extend-selection-to-line-number': 'selty'
  'cursor:word-right': 'fran'
  'cursor:word-left': 'peg'
  'cursor:left': 'lloyd'

_.each names, (spoken, id) -> Commands.changeSpoken id, spoken

homonyms = Packages.get('homonyms').homonyms
homonyms.values.push ["atom", "adam"]
homonyms.values.push ['atac', 'attack']
homonyms.initialize()

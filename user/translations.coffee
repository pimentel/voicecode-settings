Events.on 'shouldStringBePasted', (shouldPaste) ->
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
    'arnie': 'rna'
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
    "e-mails": "emails"
    "fast a": "fasta"
    "fast q": "fastq"
    "fast cue": "fastq"
    "fontweight": "font-weight"
    "gopi": "gulp"
    "guitar": "tar"
    "hark 5": "h5"
    "hark five": "h5"
    "herald": "harold"
    # "hdf five": "hdf5"
    # "hdl five": "hdf5"
    # "hdr five": "hdf5"
    # "hds five": "hdf5"
    "intron 's": "introns"
    "inter-": "inter"
    "intron's": "introns"
    "ice a form": "isoform"
    "i'd": "I'd"
    "i've": "I've"
    "jackal": "jekyll"
    "jeans": "genes"
    "jean": "gene"
    "jetter": "gitter"
    "kaymer": "kmer"
    "les": "less"
    'lima': 'limma'
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
    "yo-yo": "yo"
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
    'computationalist'
    "convolutional"
    "flexymike"
    "frequentist"
    'HHMI'
    'H5'
    'HDF5'
    'init'
    'illumina'
    'localhost'
    'NCBI'
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
    'yo'
    "viglink"
    "emoji"
    "zotero"
    # combinations
    "champ thanks"
    "champ thank"
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
    'voice code'
  ]
names =
  'editor:extend-selection-to-line-number': 'selty'
  'cursor:word-right': 'fran'
  'cursor:word-left': 'peg'
  'cursor:left': 'lloyd'
  'core:insert-command-id': 'sherlock holmes'
  'symbols:surround-parentheses': 'layp'
  # 'application:open-finder': 'faindor'

_.each names, (spoken, id) -> Commands.changeSpoken id, spoken

userHomonyms = [
	["8", "ate"],
  ['atom', 'adam'],
  ['atac', 'attack'],
  ["accession", "a session"],
  ["layer", "lair"],
  ["linter", "winter"]
  ['poisson', 'poison'],
  ["scab", "sccab"],
  ["shirley", "surely"]
  ['seq', 'seek']
]

homonyms = Packages.get('homonyms').homonyms
if homonyms
	for pair in userHomonyms
	  homonyms.values.push(pair)
	homonyms.initialize()
else
	pack = Packages.get('homonyms')
	pack.defer ->
		homonyms = Packages.get('homonyms').homonyms
		for pair in userHomonyms
		  homonyms.values.push(pair)
		homonyms.initialize()

misspellings =
  'symbols:comma-space': ['swype']
  'symbols:exclamation': ['clemmer']
  'format:dot-sentance': ['dotson']

_.each misspellings, (alternate, id) ->
  Commands.addMisspellings id, alternate

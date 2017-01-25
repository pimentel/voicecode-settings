Settings.os.defaultBrowser = "Google Chrome"

Settings.application =
  applications:
    activity: "Activity Monitor"
    acrobat: "Adobe Acrobat Reader DC"
    arduino: "Arduino"
    airport: 'Airport Utility'
    curb: "Kerberos Commander"
    debug: "Script Debugger"
    disc: "Disk Utility"
    duck: "Cyberduck"
    dog: "Fetch"
    "spread": "Microsoft Excel"
    keynote: "Keynote"
    "self control": 'SelfControl'
    "self-control": 'SelfControl'
    "script": "Script Editor"
    "latex": "LaTeXiT"
    "private": "Private Internet Access"
    skim: "Skim"
    studio: "RStudio"
    time: 'Time Out'
    transmission: "Transmission"
    video: "vlc"
    word: "Microsoft Word"
    zotero: "Zotero"
  firstNameBasis:
    # madame: 'Atom'
    chromie: 'Google Chrome'
    faindor: 'Finder'
    termite: "iTerm"
    saffron: "Safari"
    slacker: "Slack"
    roman: "R"
    masseuse: "Messages"

Package.command 'open-atom',
  spoken: 'madame'
  enabled: true
  action: ->
    @exec 'open -a Atom'
